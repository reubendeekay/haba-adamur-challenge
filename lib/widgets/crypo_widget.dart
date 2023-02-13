import 'package:adamur/models/crypto_model.dart';
import 'package:flutter/material.dart';

class CryptoWidget extends StatelessWidget {
  const CryptoWidget({super.key, required this.cryptoModel});

  final CryptoModel cryptoModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Card(
        elevation: 3,
        shadowColor: Colors.grey[100],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        color: Color(cryptoModel.imageBackground!),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      'assets/${cryptoModel.image}',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        cryptoModel.isRising!
                            ? 'assets/rateu.png'
                            : 'assets/rated.png',
                        width: 40,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            cryptoModel.isRising!
                                ? Icons.arrow_upward
                                : Icons.arrow_downward,
                            size: 14,
                            color: cryptoModel.isRising!
                                ? const Color(0xff00BB29)
                                : const Color(0xffBB0000),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${cryptoModel.rate}%',
                            style: TextStyle(
                                color: cryptoModel.isRising!
                                    ? const Color(0xff00BB29)
                                    : const Color(0xffBB0000)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                cryptoModel.title!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                cryptoModel.amount!,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
