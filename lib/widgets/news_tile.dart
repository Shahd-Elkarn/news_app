import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:project1/models/article_model.dart';
import 'package:project1/widgets/article_webview.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        children: [
           // ClipRRect(
          //   borderRadius: BorderRadius.circular(8),
          //   child: Image.network(
          //       height: 200,
          //       width: double.infinity,
          //       fit: BoxFit.cover,
          //       articleModel.image ??
          //           'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQMAAACUCAMAAACgG7y2AAAAw1BMVEX////x7er09PTO1d6idUXazsLWzMOPpbvX3OHS2ODNxL6neUeZrLzSycKTb0vAw8d4krB0UTXJycnq6uuuiFGkeUvs8vShrLd7VzuHY0N8l7JPUmJcWmeAWjm3ll3r7fNHeMNZgsastsZuj72Il6aGnbFirM14pL6wtr2VkZBxbW24trWaoammrrNvZ2OEZ1qfgnmHbHOLh4mNkZlnZGtQUFYkIietj2WshV27saitmIWkg2GmlokyJC9ROTlyYFWhinN1GXIEAAAB90lEQVR4nO3c2VrCMBCG4WlQUUGqDS3KVnfrggsugOJy/1flJFzEHOT7r2Ce95lJMj2oHLYk7bihJG9Qn2JQn2FQn2NQ5xgwCyLVBQaujQEGajDAoLqUYeoG7gqDqo0BBhuDPesijIOBGlxjgEE0aGOAQXWDgetioDsTBg0G9AF9EOJyDDDAIASDjcGudRHGoQ9E/C194O/oA3dPH4R3YvIG7AsYyMYg+Vl4wIA+wCBEDbrJG8ww8I8YVE8YVA0G2TMG1QsGbo6Bvg8GGEiDgTTeugjj6N6IAX0QDF4xkHFhXYRx1GCUWxdhHJdj4AoMMIgGYwww0DMRgznngR9j4N+YBQzUYISBngcnB9ZFGEf7AIORHO9bF2EcDOK9gMG7TJI/Dz44E/0cg2wqvR3rIowTDOgDZgEDNVhggIEa9DFQg+TfyhioQUeOkjdYYpCtMHAFBq6FQfaJQVZigEE04I20lEnyBl98V9ZZYG/EIOxMfFfGIMwCBmsM/DcG/geD7BcDfStjwN3I3SjRYLltXYRxdG/EoCf95A1KmWKAgd6Nyc+CW2HgcgxcgQEG8X+qGHAehG9pneQNSgz0jYTBAgPdnTFgFjAQDEIw0HfiWraSN8gxwCDujRjMMHB/GOjdiEGJAQZxb8SAPsBAMAjBAIMQDDAIycp/FZwj2BgoeHMAAAAASUVORK5CYII='),
          // ),

          GestureDetector(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticleWebview(url: articleModel.url ?? 'https://example.com'),
                  ),
                );
              
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: articleModel.image ??
                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQMAAACUCAMAAACgG7y2AAAAw1BMVEX////x7er09PTO1d6idUXazsLWzMOPpbvX3OHS2ODNxL6neUeZrLzSycKTb0vAw8d4krB0UTXJycnq6uuuiFGkeUvs8vShrLd7VzuHY0N8l7JPUmJcWmeAWjm3ll3r7fNHeMNZgsastsZuj72Il6aGnbFirM14pL6wtr2VkZBxbW24trWaoammrrNvZ2OEZ1qfgnmHbHOLh4mNkZlnZGtQUFYkIietj2WshV27saitmIWkg2GmlokyJC9ROTlyYFWhinN1GXIEAAAB90lEQVR4nO3c2VrCMBCG4WlQUUGqDS3KVnfrggsugOJy/1flJFzEHOT7r2Ce95lJMj2oHLYk7bihJG9Qn2JQn2FQn2NQ5xgwCyLVBQaujQEGajDAoLqUYeoG7gqDqo0BBhuDPesijIOBGlxjgEE0aGOAQXWDgetioDsTBg0G9AF9EOJyDDDAIASDjcGudRHGoQ9E/C194O/oA3dPH4R3YvIG7AsYyMYg+Vl4wIA+wCBEDbrJG8ww8I8YVE8YVA0G2TMG1QsGbo6Bvg8GGEiDgTTeugjj6N6IAX0QDF4xkHFhXYRx1GCUWxdhHJdj4AoMMIgGYwww0DMRgznngR9j4N+YBQzUYISBngcnB9ZFGEf7AIORHO9bF2EcDOK9gMG7TJI/Dz44E/0cg2wqvR3rIowTDOgDZgEDNVhggIEa9DFQg+TfyhioQUeOkjdYYpCtMHAFBq6FQfaJQVZigEE04I20lEnyBl98V9ZZYG/EIOxMfFfGIMwCBmsM/DcG/geD7BcDfStjwN3I3SjRYLltXYRxdG/EoCf95A1KmWKAgd6Nyc+CW2HgcgxcgQEG8X+qGHAehG9pneQNSgz0jYTBAgPdnTFgFjAQDEIw0HfiWraSN8gxwCDujRjMMHB/GOjdiEGJAQZxb8SAPsBAMAjBAIMQDDAIycp/FZwj2BgoeHMAAAAASUVORK5CYII=',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            articleModel.description ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
