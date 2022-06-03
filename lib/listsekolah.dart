
import 'package:flutter/material.dart';
import 'package:project_mobile/loginpage.dart';
import 'package:project_mobile/model.dart';

class ListSekolah extends StatelessWidget {
  final Sekolah sekolah;

  const ListSekolah({Key? key, required this.sekolah}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Login()
          ),
      ),
      child: Card(
        elevation: 5,
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('gbr1.png',
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sekolah.nama,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    //style: tittleArticle.copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today_outlined,
                            size: 12,
                          ),
                          const SizedBox(width: 3),
                          SizedBox(
                            width: 70,
                            child: Text(
                              sekolah.id,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              //style: authorDataArticle.copyWith(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 12,
                          ),
                          const SizedBox(width: 3),
                          SizedBox(
                            width: 70,
                            child: Text(
                              sekolah.npsn,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              //style: authorDataArticle.copyWith(fontSize: 12),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  // String time(DateTime parse) {
  //   return timeago.format(parse, allowFromNow: true, locale: 'id');
  // }
}


