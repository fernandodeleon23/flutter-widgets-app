
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {

    static const name = 'infinite_scroll_screen';

    const InfiniteScrollScreen({super.key});

    @override
    State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

    List<int> imagesIDs = [1, 2, 3, 4, 5, 6, 7, 8];

    final ScrollController scrollController = ScrollController();
    bool isLoading = false;
    bool isMounted = true;

    @override
    void initState() {

        super.initState();

        scrollController.addListener(() {

                if (scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent) {

                    // Cargar nuevo
                    loadNextPage();
                }

            });
    }

    @override
    void dispose() {

        scrollController.dispose();

        isMounted = false;

        super.dispose();
    }

    Future loadNextPage() async{

        if (isLoading) return;

        isLoading = true;
        setState(() {
            });

        await Future.delayed(const Duration(seconds: 2));

        addFiveImages();
        isLoading = false;

        // TODO
        //Revisar si está montado el componente

        if (!isMounted) return;
        setState(() {});

		moveScrollToBottom();

    }

	Future<void> onRefresh() async{

		isLoading = true;
		setState(() {});

		await Future.delayed( const Duration( seconds: 3 ) );
		if( !isMounted ) return;

		isLoading = false;

		final lastId = imagesIDs.last;

		imagesIDs.clear();
		imagesIDs.add( lastId +1 );

		addFiveImages();

		setState(() {});

	}

	void moveScrollToBottom(){

		if( scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent ) return;

		scrollController.animateTo(
			scrollController.position.pixels + 120,
			duration: const Duration( milliseconds: 300 ),
			curve: Curves.fastOutSlowIn
		);
	}

    void addFiveImages() {

        final lastId = imagesIDs.last;

        imagesIDs.addAll(
            [1, 2, 3, 4, 5].map((e) => lastId + e)
        );
    }

    @override
    Widget build(BuildContext context) {

        return Scaffold(

            backgroundColor: Colors.black,

            body: MediaQuery.removePadding( // Para quitar el padding de arriba
                context: context,
                removeTop: true,
                removeBottom: true,

                child: RefreshIndicator( // Halar hacia abajo y refrescar

                    onRefresh: () => onRefresh(),
                    child: ListView.builder(

                        controller: scrollController,

                        itemCount: imagesIDs.length,
                        itemBuilder: (context, index) {

                            return FadeInImage(
                                width: double.infinity,
                                height: 300,
                                fit: BoxFit.cover,
                                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                                image: NetworkImage('https://picsum.photos/seed/${ imagesIDs[index] }/500/300')
                            );
                        }
                    ),
                ),
            ),

            floatingActionButton: FloatingActionButton(
                onPressed: () => context.pop(),

                child: isLoading ? FadeIn(
                        child: SpinPerfect(
                            infinite: true,
                            child: Icon(Icons.refresh_rounded)
                        ),
                    )
                    : FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined))
            ),

        );
    }
}