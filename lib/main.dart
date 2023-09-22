import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double valueRedSlider_peso = 0;
  double valueRedSlider_altura = 0;
  double imc = 0;
  String estado = '';
  String imagenEstado =
      'https://thumbs.dreamstime.com/b/vector-de-contorno-color-balanza-icono-equilibrio-juez-balance-juzgado-vectorial-plano-233297179.jpg';
  String comentarioMotivacion = '';
  void calcularIMC() {
    double peso = valueRedSlider_peso;
    double altura = valueRedSlider_altura / 100;
    imc = peso / (altura * altura);

    if (imc < 18.5) {
      estado = 'DELGADEZ';
      imagenEstado =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6aWIVoIqty5ztrjLqsGOcp54ZYOZ4DtNfPTHPum6MoLSCCuXvlqs6442JzEzG7EDbZ5M&usqp=CAU';

      comentarioMotivacion = 'ALIMENTESE UN POCO MAS';
    } else if (imc >= 18.5 && imc <= 24.9) {
      estado = 'PESO NORMAL';
      imagenEstado =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN_JYzrrYhK-9zy0NZtvQ4F2941ALnGWxxbagFCwHEdbBcrprJa-Tb4An5Z3X-2Yr4w70&usqp=CAU';

      comentarioMotivacion = 'CUERPO SANO VIDA SANA';
    } else if (imc >= 25 && imc <= 29.9) {
      estado = 'SOBREPESO';
      imagenEstado =
          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgVFRUYGRgYHBkaGhwYGBoYGBwcHBkZHBoaGhgcIS4lHB4rHxoaJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQrJSs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0P//AABEIAOEA4QMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAECAwQGB//EAD8QAAEDAgQDBQcDAgUCBwAAAAEAAhEDIQQSMUEFUWEicYGRoQYTMrHB0fBCUvFi4RQjcoKyM5IHFRY0U6LS/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAJBEAAwEAAgMAAQQDAAAAAAAAAAECESExAxJBURMiMkIEYXH/2gAMAwEAAhEDEQA/AIhoBlbC6YA12WQXaCivDqQjOdYsoRuTZFNvU69Sh72ue6dSbDvV+IJe6U73ZG/1OFv6W8+8ppA8QqtXICxhubPcP+IPLmd1kUUlolhnT0mE8qKSYiUpKKUoAlKSUpIASSSaUAOkkEkAJJJKUwEkUxKQKBE6b8pBGyNHCNcA8XDhI5/koEi3BsTqwn+pvfuPEfJGaG4bG0hB2lX12Fwa7nZ3+ob+I9QVmrvJsN91dgKl8jjZ1p5H9J80k94G1nJEuWbE1ICtxJySDqLeKH1Xz2d1DKLGVJBcdFke/Mei01yAAAqtLJDI+5PTzSUspSQAMwDM7sm2/cjmMcGgNaB1hDOH0cok6m603Lp9FBaQ7SGtJdt89gsL3lxJO6txlaTlmw+e/wBlmWkozp6O50XTMqB2hBTyhmNwRDg+m8sdvFwepCbeLRJb0FElRRqnR4h0bfCeoP0V4KE9BrCSSinlUIdKVGU8paA6SaUpRoDynlRlKUaBKUpUEk9AkkmlKUxDypUaha4OGoMqtKUAdNiyOy9vwvaHDof1DwKzB8FU8NqF9NzDqztDuOqpqAypfZS6N/E3Zsr+dj3hZWtgF3PRX0XZ2Obvr5LLmJMDZKgQwcD5+qsazMQVFpm0+Supsiw13UlFmUJJ8o5hOgASTcgKQeWtLpgjTnKytbLimxNQkxy/CplFU8K5SCZKVqZkgmeyQQkCnSBM08LY11njsmxkgeIOxlWV8AWGJkH4HbOHI8nKfCTDxBAnkL+f8I/iaMghwLmxfn3jrO/Vclupeo64U0sZyrmEW5a+On1VZKM1mOaY1kdk84iB9I6qrDYdjz2mkRqW2B8P7Ko/yk+KRNf4rXMsFSlKLP4bTBHbcNdQDp5QsOMwpY6DBB+E7Hx5rZeWX0Yvw0vhnlKVY+g4RI1Ejeyz5xzVqkyHLROVIFVhwUvqnwLGSlNKZ1k0piJSnVbngaqbKFR3wgN6un/iL+ZCTpLsalvoUpSsOO4XiYJbWvs0MyA9JkmVow9PK0CZO55pzSroKlz2E+D1ctVs6OOU9zrLVjaRBgbGCg7HRcLo+ImSHD9bWu8wJ9ZSY5MuBdDwDoUq4LSWjmVW0wQZ0WnHHtTzAPok+gXZVT9UnmLTc6nkE2cASqWt3O6kotlvMpKHvBySQBRRoFgl2gue4IdKJ4ypFON3EDyufWELCJXAV2TCdRCdWSOnCZJABLg9TK/STtew6rp3MzAZjBGwPy+64zC4gsdIR/hVd1Zri1+WCQYu7xJ+kLm86+m/ifwsxFOZabakXuDaDJH4O5DWVchLHS1xM6WE9emiIO4cGEuNQyeQvbfnP5Cw46o0i5ByHLJIm8wI75/uuF9nZL4M/Enl9NzQ+N7GRbaPA+aFY6s57qVFo/zGyN2iDv6Tv4rUysA4GMw2GsxcW115ws3s89z8S+q+BkbcMMgExDQel7dFpPWgwtiCAWsLw5zGy5tybAweXLzU8NhQ9sgCbBxMQDuBG2/8qOHpuY5uZgDy573mJN5ygmZsTziQPGGOxrqVOnSEipUOYxMgz2nDpZytWZuSNBjC8sZD3tBLi4ENbFjt3R4eF1Ew90NzNmzpAaOsAzMz0VDOHMY92Uvd/wDJ2olwmJiIuQYUxTdoGDwOmlu77pV5f9jmEXGsyCH022k319CgdfM8/wCUCxgtncCfIfqPkiGNYGGHnMf2A+ryDMdB6K3BU5hx+K0WgRNg3YDuVxdPpk1ErtFWA4c0Qbucd3GSelvhHQR1JRbIGNkiLcrdxT0KR1ZqNjuPoUqtbMIc2OoN/Hn+d63XHJg+eEDXVZIO0hDWCyIYkw0meg8dfT6IfK08S7ZHl+IkuhLpoUXf0uaf9rjHoVzqNYN80AP2vPqAtK6Ml2VwtVcyxh6EeSzEK2o+KYPUqfgzJUdmdGwVoEqplG0ndXMspKJ5AkoZu9JAGLirh2GjZsnvJn5QsKv4k8Go+NAYHc230WYFUuhPssBSlRCUpiJSlKjKeUAOSs2G4y6k9zSLuPZLNTb4XbHyt0TYvFhgvugWAfnqudmsA47m57uix8q1Ya+J49O7o1jUjtAa3JO9hH/5V3uGDM2xs5tzu0Zh10BCAYbFtLw3MAYkAi4Ii9j+ddy73hgJBMnrNjyO/aAXFUevJ2TftwQqUWBpGQ9oZRk1LnagjSxlEmUhRDGNaGNe58BvMgu+Lu36CEPpMf8A4d9QHtASwnbKTMDaY8gt9XEEtY9onszrMOcA3MbxGVzvKylFMz4N5pkl0uNSplJMzmIJ3Foj59FDF4Br8TndJyBkGYDXZbOF4MwAQeXir8Lim+6c8t0ze7BuSA0jMOc302IWbH1S1wrm2ZjWFpALSQczTra5d4Jphmm33ROaHtcTJiIIgm17u+IdxCrey8ERzjc/Tex6JYXtNaR0uQIGuneYKuNRtwRlB1gG0gC53I6KWNA2vw1r7h/cCZHz6KeDD2ANeM2WIIO3dvcq3HyAfhPKORuI8BA7lhZicp3Fzrqe9XGkUdFQeHdoW/uFN2Ba/tSdpH1n6/ZAP/MzBDfjdoNiO/ZGsNjRkIyw42Ot5trsVtXkxGcx+ALxpwz5WiA0Wj596HyrcYTndJvMHpB2VErr8X8Ucnl/kyUovw3/AKTzyePUH7INKNcN/wDbv/1t/wCJWj6IXY0m91Y+9P8A3BRcFNrZZ/u+in4MqzydLKRgBO0QI3VT3c/JQUT98ElXbkkgANUfLieZPzUcyrzJ5VkssDlLMqgpNQBOUiUyYoA5vjeMAcW6TInUAWnTvS4FVaAZLfzrtCw8baTUeQLN18YCExuPRZtah+2M7rO1z2mLDSDpzvAIHgiXEqhhmV1tDAGhGvevOqOKeNz5kHzCNcJ4q4OAc/M2fhfAN/2uFj6LOofqzXx2vZaerNj3IbA+HT/aNed0EZTcyixrpJDQyI0a5zfMhgF+ZHJY8P7QBrsjh2CQM1+ySIIPSd0ZzTlcJ3cL30PrErgaqezuWfC3hWEktYR2aYIFrOJBBmRtJH4FV7WOGVjRu4eQ5LYzHtY/LYZpIiw25aKvGUQ97XvjK0yAfsdCj2Ek9LMHhgykJtYAA/JVsql3xMOWf7aLPX9pMGPjqtEGLS7To0GERwGJpVACx7XSJgWMETpqFXq2L2SMGLYWgkabfzKBYgXgmJ3/AL+S6HjeJZTaMzgOs+knQrk38QpOM52kNvrsOoWsrODOmaKVYMe2AO12WxsILpvpb5o9hsVIIjzuO+QhfsnUFR76+U5Gj3dOeZjO+PAC+w6rpquFY9pa4amxAAIOusKbS9kmVL/bqOVxbwXuI0m3doqVpx9AMe5g0HNZZXoxnqsOC99no6M4D/oHrU+TR90GRvCsIpMHMud9PoqZKJO/V4K6kOwO8qssV2XsAdCUZwG8mZ8zcqrKI9VGq7W+ycg7qChZRzKSZJIDngVNqrYrGhUImE4TBJMCxQcEgkSgDmsfRJe8TGYekIE0QSD+Qum4qxucF1rWIKD8QoiczLkfFAt0KzVZWFOdWmIs5LRVwDwJaC4EagWCzCr0KI4fi1cNyBoLf6mn5orfgox9l3Cn1GtJlpFhleCcosczS3tNjkLdCuk4J7TsaQyu6GiAHAXEW2s4WF7HoVyuEwmIrOLGAuOpAIaB3kkBdPT9lnBjSQxznfE1/wCj/S7Xy9Vz+Wo6pnT45v8AqjpH+0OAYQX1Q61gGPdc7xCA+0HtNSqgMovLWEy7MHZnN/aAAYvGpXM8a4c+lUyuZAA1BLmkcwTfp4LPQxjWXLGun9wlKfFDWrkK8tp5XBoxtSk9pDXkOkRLHR1k6jyW6jjaLaTW5jna0CYIE9HRMLM/jFF4h2HAPNhAPyWSpXpn4WHxj6LT01Y9M3ePeDoGcZoGi1lV73ujtEhzr9+ptuuerNZncKZOQwZIIvyiJ1sspqkXaSO4ohwTPVqtY97yyRnguPZnS35qr9VK0Xs6eHfeyeKbkDGCzYAMG/8AUe/XxXUUjDiDblv5yuedw99N5qUXAsMHK0bAaCO5FqHEKTwDMPsC3c6effK4qWvTrXCwEe0FOKpP7oPohJRf2i+Mf6R+Qg8r0PE/2o4PJ/JkguoczK1g/awD0XNUGy5o5kfNdNi3gX9FoiSsumVogb6BqyNcAbnVEGYJz2F4iLx1A3V4SBwySdOX91NjJEbj1HNXUqUQk6mS4Rr9BrPRT6j0z+5KSt/xLf2hJHqg05NhVjSoFkEjkU4UFFoKUqIToAeUpTtYSphoH9/tv+XQBgx+ED26XHIEn0Q9uGtlDX9QLx38kU4jiw1sak25/wD1kDwJPcsWGxoPZfqP0t27wAGgdCLLO0awyAwpkNaCJ/awvPkBddPwngNFrmkkPfaQ9pBuCScswdrEWgrBga7WmTkaOcnN39mJ8AV0eGxzXRIDxpLhPkddDyXNfs1iOifVdlfGsDUpvbiKLJYGZKjA2SACSHhvcduSrbiswztBeCGwGASZtvp6LpcJjGAXgd7rLlsZxHDU8UMjmgRJGrM0yJ5c4Gixfi9jWPLmphocNETUDTP7gCB0grmOL+xTKpzUHsY8gks/Q8j9o/Seot0XaUeIseJln/dKZ9Rg/b/227rlEzcvURVK1jPDOJcNqUHllRjmuGxF45t/c3qFgzE6L2bivD6WJZkexsAyIlmUnUtM2PeI71yeL9gyTDKoAP72Sf8AuaRNtiPFd0Vq5OS/HnRx+Awz6rwxjczj5dSTsBuV6b7MYDD0G5Q9j3/rcYmd4Gw5JuGezNGkyAz3k/E7NDyeWWCLX7IHfzU6PBcPmzUnEOH6RZ1teydfCdNlHlp5waeKUnydQMExjS4vhvMmQOl9u5ZMPhQXk5QA3Qn9WhBaQYIjeFVh6bnjtuOSIg2BjoFup1GhuQTlFgbyO62i5lydD1HM8bq56hhpAbbTXmbIbC1Y3DEOlpzAyQRqb6xv4TG8FZJXowslI4Le02EuCUMz5NgwFx+i14utJtoPVVcKw7y0ho+LU8gFdicKWGDcHRUiWWU3zfT1WhvEA0ZMzmk23CgRlaARdx9AnY7M6+wsnojWy5EjaEq7Q0QNT+QrKIHNT4i2GgjUX+i0RLfIIyjmktvu2pIGcjj6eWo8f1E+d1QER4yzth37mjzFlghYMsQCkLJk/wA0gHLv43/souf+fmqRQziuKDW5QYJ9AjQB2Prue58EgNESPUA/ZCaWJyGB5agd/M/L5b8C8GRETpeT3/n0QjG0ixxt3KFy8LfC06HCVGjtuNzcDmBqSeU275Rjh/F7gO35aQuOw1eTBvYC5EWA0RGi0t7QflHdM84CzaLmtR6fw7h2Hecx7To3MgdIWt/sph3OnKPDReZ4TjNZj5aOzIi+3XmV1mE9tCB2mnbzUtFp70Hv/RuH1Be3SQHG8EGD0stNTCMYMo063QR/tYH6SCJ06LNU42HNzCZ5JppBjYcflCpfiAezH18uSB/4zPMujYE2I5fXyVtGi8xD2kTY7j8+hU1X4KmfybKRe1+dpzjQtPLYZvobfJH2UGOhxgPtr8W8X5/kboPhcAYzPeNbwQAQfkrMTiGMA1frDjrbUDkeh+srNVX3o0cz87Cld8tIcJH7hY+PPvuqqNIuB3GkZb98aHvCw4DHmq+HHaWuGju/rP5YQXbTAEREcvpHyQ+xco4ms9zHOYQCJMtOltDY2PUXTMYHuAaTJ2cJPg4C/ojPtBRbaplnNYkWMxY5vvKz8KoNHbE30nb7rtitnTjqcrAthm5GhosArBXB+ITCzB90n1IHXZWqJaM2Nqhz+QH8lTwe7lnrOuY2EeO6m2Q3wRoYFKbZghaMayWnohmHqnJHJEsJUD2wdlpNEUgR7t3VJGvdhJPBAanhWVWBr+oDhq06g9e5Acbg303lrvA7EcwjmAqXj8lGMRhWVWZXCQdDuDzHVZyvadLbx4cGEzjC2cVwbqD8rtNWu0Dh9+YXO47iUSG/niofAyziHEQwWueS551UvMuuXX59APmqa9aSTotGAoF5EAmIgNbmPgFFMtSSpuymdt/4Gq14rB+8EhPT4a9x7TCGjmQB6WRzgnDy52R1htYtb4Hf+VjVpco2mG+GcJXwr2OgrZSxZaADcBd/xD2Zkdlgd1PTpt3STbwQet7E1YkC50Ago/Wl9h+jSfABoAvPYPfKK0qb/iykgWbbVaqHstVpgOtmm8yeoEAdJVmLxTwcj3ZcrpuCZO1togfllLpVwi5lyuRYbKJlvj3/AJ6rXhmMLnSS3tGB3RPrPqmwVZhy9ouM3Np0kT1+q34Wgxzv0yTA74v4SY8FNJ4VOaWDhDXsIa6x+/8AdMeEPaC0EEW/lGsLQbtptfY9eWi0e5bpI1Gp56dxXM7rTbJAVHh72jK4Hzt0M/VS/wAK7R2Zu+30tzt8l0FLDt3d9fwq9mEZqRfnzjeQmqpiblAvg/DCyTMhxkCb+E9ETxtaG9ru5np1VmIrNY2bEefdbcdyA43iDXuyhwPIQDcbSbkaLT4Qv3M34hrKlB03Ii5F50B6arCxgY0D0UMRULWhk9/LoFmdVMyurxap5Oby57cGpz7pmmT3fNUPxEDS6lhnWWxmXvpNgcyZP0TvOg5pnXMJq/yQJiY4hFMBWbIQsbJ2vLSn7YS506rOzkkud9/1KSr3F+mDaRgroOH1ZEeP3C5+lcLbhqxYQoisfJVzqCfGeGNxFJ1MmDBLXftdFj1HMcl4nxEPpudTe3K5hLXDcEW13Xu9N4cJC85/8UeDQWYtgsYZVj936H+I7Pg1XST5Il5wcAymXENGpXeeyfDG5A57STmLTDgAY32nl4LleD4dpMug7QQCL95ie9eg+z1QsY0SXAm1rkA6W8enRcXmr4jt8Mf2CtDBgCABMaxfnpFv4UmUg45m3IkTMkdJNx4QVqDjNhbafz0Waq4sdZpIcdBFiec7aLk06ka6QIEEkiPz8t4rTNiR9j07vms5JDQ9okaxqR4c+iajis+xbpINiPDZITWk6jBHhtz+65jiPD2PJaWw4TveNzfqQuirPOs2+1zKF13R27yJjebQFt4/yZ0cdjeD1KcuYSWm1uh0848k+Fq12OaXCYmQZuXFpk+IhdbSYXgN6T4mTp4eq20MACBIAP3gHy+i0qsFKWnM4bjT2DJEtiJIsDL4EakZcvkVmr8VeCQXuDiO8ySZmOn35rqqnAmudmgCIPyM+voslX2ca90gRBkd3SfzRZey/BssA+G4o5sOBdIHakkFw1GnRFcP7SmDLS6+gFxp9YutTPZtpaGnwI23EeKlQ9mcpg9eVxN/n5FGommjJUxzqzw0NtYcydx/Nt0UGE9001HmSNG638brfQ4ZTpy/SNSen5ouf41xIvdDfhEwOXWOauJ9nr6Mr8ilZJQahMk7p25Ynks2FEgucVTXxGY5WaDUrsRyssNTM7oEUwfNAqVQZjGxRrCmWuATQmamOkpqp7Ucx9Uqeqy4qrFUN5N+cobDDWwXhXCkCqqAWlqYkQ90Ey0QEkhgKi/K6Nj81qlYXtkq2jUmxWaZTQWwOKymDoVp4rhBXo1KRiHsIBIkB2rXeDgD4IOCt2ExmWxuNloq+Gbk8v4Ph8xLIcCTHZ1F47Rmw8Cu14NhTTPwiB+4ifCCQuf4Xw15rGWugEl1gN7/ABEbnZdPiXvYO01uQDSxeREaXjxPguTyvXh3eLiQz/ijFy498SPE7LDinuguYZdcCIieRAN1y1XiTnuAYAyJu6oPllzO32Ku93ibANLs5/QXNbB3kgSNeSx9GaKkGm8WewNENzEgRvP15T6ciTK7Ks9pucCSGumDyJ57/koPhSwXLn5hAOZhqWAnQbR4ckz6jC6QWtc0A5mtLNReWTI8klINl4xFQucxwBgm+luatBzAtceXzvHkFTRxYfqWnqNHa6clJjTnnnZoGgEdpxPPQeJW8ziMqrWbcLSmYv8AkfdFKTreXhIbB8yheGL5sRtNtr/KPVFmPmLDe4N9As7f4HKJsHPoPkfzuVrS2/T8HyWTFVjMaAR38lU2sc5/UPhdyBk36iIPgskyvVsJMba1wpPqADM6wFyTsg4rPY0lzyG2gCM3gdx9kKx3EC8wJjlK28fjdf8ADG2p+l/GuKF8sYYYPXqVz2bn/K1g7nQ81RinC3NdilJYjBv6Z67y6GM1P5KsbSyW6eqsw7A2+51VeIdN0+kSZGN/zLaao3hDB8EIwgkk+CLYPQnmhcIoI4cIPiX5q7jOhA8kawwgE8kCwtOXuP7jPqoY0dCzZaGhUYdtlqBVaGDJJ5TIEc+XJnHkq3P7UKwlZmnaNFN9k4CzNKm2rKpEMlWE/C7I7Z4AJHmDKFYs1B2Xw+dM2h/3NDUYYAUz2DkI63SqUy5tyUcGokXysZPJoJ8DmsPPuRXE4Wm3tZS22rJaSTzAEqnD4rLbQG1hPneVqaGEdksPeCI8JJXPcUucN4uWBn41hLg5z2wNnG3OTcxpqSgnFcGSOyc+7SB2rTAdFj39F0eOY1ph7Ibs+A5knkNAb78tUGqEsORxaWnQjS/dv3qZ/JdGLgFe3uny0gkgjmbE3748UdwYcx0PMtuWu2cdB+cwhbMOeUxBBiNNj4brqsEwPZMaX001Wrf0yS+BKnhpEyAADyvm69BPms+CeDUIYDABBjQdT+XurXt/yYLspcOcQco+lkOrYsN7LAIES4EySLyPQeCz9HT4K9lK5Zsx1UB4Mui2lvidHpI9VgxuJLHSHbXG4NtdtvUrI+qb3Jm/isdVpK1jwJcszrzNrJGr41zjqftvZO10wVQ9o5p2PcbN0XQkc7ZZUqeKpDdZ/OitFOOspPZ8lQium6LHTbooYkCArRZVV2ykwIULBFsM3QIbSMlojU/JF8Oy8pFG4CGO7ihuFpxCKvHYI6LLh40hRXZUmuitDWqmmVagTJZUye6ZGiORxBgyFJlRJzc2qf8Aw5CTllKuDVaAqyYV0WhQKeC0sp1FaXrOQldMRpEJsqo94pZ+SWlJEn3BaTINoNx5FVDBsjLFuWycVFaHpJL8DbZVTw4bYfMq9lVwEAkDkLKo1E3vLqkkTrLTJ1PmoOamNQqEk81YtHdZUVHzZW5OZU2UwmJswPpc1PDN7S012J8OxT7awwapbyVDxa2hWpzDKg6mAIVAZXsgKmsbCFe1pEyl7uSpEPhGXJ5D5onhmLJSECBuURw5t+bIGaiOyVlELYwWWUNUspF7FeFRTVwcgRJJRkpIGc03UKyqkkqYkSbomKSSSAknSSSYFblFiSSksdWtSSVIl9jFQOqZJNCJjVTKSSsREK1qSSTAaompJJKF2MtVL0kloSZ3p2JJIAvZq1a8J8PifmkkpGbaSpfqe9JJSykSGitpp0kIRYkkkgD/2Q==';

      comentarioMotivacion = 'ALIMENTESE SALUDABLEMENTE';
    } else {
      estado = 'OBESIDAD';
      imagenEstado =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnNZrthboK1jkz5QsokvaZLOSAkLM33iHdR3v6L-GS9rV0gQY-bVelVdN-L1xYzDqIXlM&usqp=CAU';

      comentarioMotivacion = 'REDUSCA LA PORCION DE POLLO';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IMC APP'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              const Text("INGRESE PESO Y ALTURA: "),
              const SizedBox(
                height: 10.0,
              ),
              Slider(
                min: 0,
                max: 250,
                value: valueRedSlider_peso,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    valueRedSlider_peso = value;
                  });
                },
              ),
              Text('Peso: ${valueRedSlider_peso.toStringAsFixed(0)} Kg'),
              Slider(
                min: 0,
                max: 200,
                value: valueRedSlider_altura,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    valueRedSlider_altura = value;
                  });
                },
              ),
              Text('Altura: ${valueRedSlider_altura.toStringAsFixed(0)} cm'),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    calcularIMC();
                  });
                },
                child: Text('CALCULAR'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                estado,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                imagenEstado,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                comentarioMotivacion,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
