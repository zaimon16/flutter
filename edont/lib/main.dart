import 'package:flutter/material.dart';
import 'package:pro6/api/ras.dart';
import 'package:pro6/interfaz/desarrollador.dart';
import 'package:pro6/interfaz/grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'R.A.S',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        primaryColorDark: Color(0xFF128C7E),
      ),
      home: WhatsAppHomePage(),
    );
  }
}

class WhatsAppHomePage extends StatefulWidget {
  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R.A.S.C'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Acción de búsqueda
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Acción de menú
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'RAS@h',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '+57 3044910812',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('INICIO'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),     
            Divider(),
            ListTile(
              title: Text('REPORTES'),
              leading: Icon(Icons.home),
              onTap: () {
                Buscaras().then((r) {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("RAS"),
                          ),
                          body: ListView.builder(
                            itemCount: r.length,
                            itemBuilder: (BuildContext context, int i) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(r[i].url),
                                ),
                                title: Text(r[i].title),
                                trailing: Text(r[i].id.toString()),
                              );
                            },
                          ),
                        );
                      });
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('CONTACTO'),
              leading: Icon(Icons.phone),
            ),
            Divider(),
            ListTile(
              title: Text('DESARROLLADOR'),
              leading: Icon(Icons.contacts),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => programa(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('GRIND'),
              leading: Icon(Icons.home_max_outlined),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => serpientes(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(
                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAllBMVEX///8jHyAAAAAhHyAhHR4kHiD//v8GAAAfGhsbGRr6+voEAAD19fUJAAAeGRoZFBXn5+fu7u7d3d0YFhcVDxG1tbWBgYHU1NTLy8sWERLa2tqlpaV1dXXDw8NAPj98ensqKCkyMDFEQUJnZ2ePjo6ZmZlTU1NJSUlbWVqzsrORkZEODQ00NDRsbGyhoKEmJCVWV1YWCg5yW3CJAAAXh0lEQVR4nO1dB5eivNfHBKRIFSyoqFhQB8uz3//LvWkoICUUd/b/Hn97zp4ZBzU3uT03N4LwxRdffPHFF1988cUXX3zxxb8F3bHt8Xhs247+20PpF/b8ctyc1yFUXd+P49h3XRWG6/Pmfpnbvz24jtDny80aAGB4nmUqoigOMCQJ/aSYlmcY6G/rzXL+P7mkmn2ZnhBtvkmpIv8ykMhrkuIjOk/Tia399pCbwAkwdYw4Hpg+pjJwfnvgfLAn+y3wVG7qGKDqge1+8s8LpjbZi8BXpDI6sAiKZX8bKJYB95N/mV0XU29kpQiACEjWFNMzZMOQ5ZHh+ZbnxfTnPx7SPkQWU2SKluxPF79NSDH0yQl42fVB9sED8uAarY6TYD52dG2In9R0ezwPJsdVdB0YwHOV7FqKMTj9gwvpHLdAhemBIpYD4Xk6mVWJljObTM+hbPhpKiE0wfb+b6kd+/AYqSl7AC0ZXFfLBd8oncVydQUGVU5wgOdJUuTH4d/ROs4BGin2lEwAouOimRnXZ8cIGCYRXcas3uDwb6yjdnTjFH2mAU7LdiNzlicgq/DJ66JhHf8Bebyo8nPaB6IvrzsJkHNfj/zXfImGeRn2NtRWmEVAGTAKJdOAq1n3j1xJxvMzByI4df/I9nAOwHqxJ1gf+9EN9nGN9HLCGC74PXEMrkaKvt2lvxBBv+yetgdCIwx6++RGo1gZT9daAdeebbQ2uYLERiLlvPqFAGv+iJMBSMbj8oFvuEgvG+Q95h/4hipoByAmCtT/lE7Xjpb34pLDX1Wq9n8g0QSmsfqc72HfXpIAzn/Rx5lv48T3kHef1QLBTk5Y1dv+NU69s4mFUAQ/n1YB+g9IllGR7x/+MoYNYLMK5bBVJOcEl+WFP2Ux28pPTt20+b6G0CMAE+HftNAws0OIs2/yCOzH5AVNcMbj6g/aPA2Hcf4szyBtZq9jSqBkPRpLoD6fiiBWqImBLpiSddwhisG+UsaCh8u+1Vt/VN8MhXGYuGlG1PCrnGAa5pIAHlyixbu4LoQ+2FStjh2BxDaF40401GD2cJ8S0YBD9fH8uH+AOJsEGGC/GqvicYRtD6hkQG3DSITu44NpnJnnJh7/ku8d+mzysz9dLWBY4iAVZXkGXU3kkCFxRP4D+lt8quSKZaLgTOszJA6HwsKiAg9VmUcE7cl0J3qAJPTTCwehPJrepwqKS7BVtYypLsxxMGF5myppDABLwirWhwKqRZLEdrd1kzgcX1YxAF5h1luUj3TEZ+DjZRU9eSk4V/Sz6AMQ3Wdl/L/YMiWg+B9ZxfGDTaGP1FmVj4jWbgsMX4R5qWMEuoGw2OwxGbN9TDSzCMLAOfvkecsAyupSzK/22qcaVX18QN3YIZNBb+dgli2GPvuJRjTpLZUkvr3l+AZGJ/r8YuXHInrUBOfJicwgeptoAfm/46JgKZ2dx9RN2LPRGAo6m75BfCpVeU6wupZwZhpny5esc/Im+6AQe25ZYfohyzBO0/kbkfqJxWz+rl/TPxQiFsd4iMDCBdQnyB74SjFnZoDpMaPUO5chcAvep8ZyuAlyX6af2CrGkdArNiPIps4pJDC4xcAq23IpgLjNuKVBlEr4pCfDk5VNVnHqO8ZMcq8+6h0QtQHddZG/bB9cTF7phlMR5EP6E4ZI6SiFz0nI3mQDNGfNvA7QY6QxZ+kEdVsg3/NbfkOGk8RksvTleavsbo/SR5FXkJ5Ye0tFXZR7ixdfH7l4Y1Fk1Ar5qx7GdjO3dc2eXIErQrVSQcm39HcuDLrehRPeBtp/TH+BIG8mZpFcSp9ZR7nigcF6/aAp5YymMYGfexZk7F9AfVQY/9dPgugAqIS9+aLOqpy+gRut6hdXVJQCBjfPixXIKlcwyXzzkv0ZHIQeMKefJhk53TVcGhXyJ0Lt1pJ9BxKay2mcecXIze5mxCjvQRT1hwrxGnpRliNQyFOlX9CQ8pzGD/Wq2SDzSm4NBS2in648uhv+VYxlBCqPrFRfKhiUDMkWQCPzkYZ7EpwchXlX235QbROvuhIY4K0JHJ9mbdKtcgERPEcA1U+UA8aBsPHSryji21Il2gZ0zGY6VzJVMOtAzNZxwcAyQGu4byuHcHuIMgQOrP27I7WJMY9A9dptZ2pKd5fUMP0Nk0I3MgvjIoxBsZtSTyGMcwVHxvF9aMPQJM/K0y4EzhKtnBaDH1AW+qVgrofCHKLoryyIqqRwkPt8uSgcXOBxYAHqEvFHlNHkn9dLwyngiB/Qe1bYYL6Z7law9oWjO8hkpq2o/Z7NhUqzmYrFtBWoX0AMCPY2juJBzPV4JYxibaKvafIOtN7b06CS/wLtNoKcFEI/xN+82MQj/iLFQijrEucskMlQFNjWeTuSoFDyniZnKOxHTUYmR9jlwEUkI4tW8xH195oj9iMVVUkS6Yx6RmyJ6DURP6CqsHxD5kZ1epEi4oHjkk1Q0X/Z+j2fDD5hgSupFnGWZ1+WY1IoDHMUQkhLhg15NCAZdeu4PJw9II9iHxF4XQO/1G+xXWKWRaudxTgQbyY9QVNOGUyvI9gyHl+Q3PBW9WMZjGS8V4H+Q2T7rvrYhuv9Ee9GTf2BT0yvFiwn+iWGKGC7vMdsTxypNTNaeeA2JEZBeTyZ/A44ZTANiWxRPYeo24vZbP7EbDZb4OL95Ds2/sB72bcFUIkIlutKjTpvImwTKR7o9LwUVWC0COXJR0SYzTRCjF6pFIaRCuMXhfORd6t4GuMCSFzwp8UiOg9Cj3JNXhgPWrooOC+mYe8BjNxHuD5F5/1+f5se78fVORcy6J4IU2HoxRjVGgLqVoqP5pJ4pxuvr7Dl1Np4Iy8Mp0d3pohDXtO0MDzPMPz4lAvJAFTBS6+sPKl24BMSwkhG47SURnMz5i4ZAqcrU0whNFZDNHyRuHDMjcNpcTNH4UWGqZhW34J6M6DtiA+rbJsGihPizkhPKZy3joUowA/WVPlXzVxYPY3TwdAFnDhGShwv5J02dWxOJp5qc81mRtu2FcIniWjoey/34iu5T6GmY3l9yxUY6VgSIXR5ZiOFBeXJpy2c1gaEdVChIzhhzn/zsxH6JJN2mZ75tAe2iTjEaLbjNsWzDZ9mZtHWUKSpiZA+jcWMNGeDBnudDpJ03uAdGW78WV6jOFGjdbrPKT63DdfTwMm6JTVfCZQwrR9qak5KsSIMJnpNgqgJdbANFlsGHdUMhYQ140bORMR9ZAOFGR1tPh9XCZpiMdf0N+3UxxIOJBHru2wGxq3zWbiwJmrQL46TC8E4O7Gi3EsoiSY25VbZPpv4J0Cqz017t6CP7eo70YuiyO+cUmM4AEyX8S2hGwMg7s631eoWhShs8Au8dCUOBPuROnAw8DrnOxEcqvlH/Gy6Jw6aySzMvD61iw+RnO/zJEQYavriMlWB8RbcY8O8UNOVQ70sYoT9GqkknVMAZ0u4LPES6vOePogmBU7T+L6TDVOSMiEvOAgzN5UsTIS9E5ZE1+Q2lisQkEWDjEmdOil05T01tpozv+QYxT5eZSu7eQb2+kx9eUiS0SnfKaTHyJ3/JuZ+4LJSgLsxqMToRDX++BihuP1NNw5pYVDqDXE4n5kpEhtp+RLQtCev0ddOKl7DxGPbVWbKFIOWsSM6EEOCwq+Yn4Gbfo85ml4eL3Wrwu6iSLMZ+VClDGxji/l54/IlhDgTNsc5huAEMC8WEyiQv2c8dy8MU79Z5SU6vGB+NOCzF9RWKFf6tcsqCl3iuOp7vJfP4txiDC9WxnfPGkyjga0uhn4lyouT4akYWsxQ/VeuSRGBWBnNgUdKUdSwSpXpG1DK7tK7+DbFihg4TkGkgsf2lfVteVShqngFl0ChxTZ1ExhsSxP8ENw61hwsib+rcgWJOouZqRjO/pQSKAIsgz+JMXFry7CcVepIWg7GqVtB5YK6JYBHokm+4slyFWJIdqR+nukbmUMGJo+4LOPqqvcuy+iERJVxxSqEJugyrVFeMkJ2pJbPLLio8kxfxfa4aFy7GEYawuZrNgpBdtBhIrNRqXrADsTslQXndQqDOJ+soZDwDkC4bG03iH6UfJ5yvjWmKXE0nLBsyq0IV6K86OeaPQx9JZfOmmKAW8uYmNg4SeHxcmkakYX3Y6MkrpDwpuLUe/21wV5z+uxpHtAHu1ZHwWdsE6L+SerRiKx8ZlbmdksDDeeVXi+AJucvDm/lfuLL5zHBY9VcsTrUi+Dwamg0mGxXTMooxPsnt5REQbXRePAZcClVxCBeTy4OJ8krUPSMn/rPyOHKq0wn1IetCyyQnhmnU4xNE7LCxTXSmcXHZj5enqh3hCluXpNHdSKH30a9dI/ppJ+yTDAyrdO0UvQb+13aIU5zuQtQFGZvjIR9G9eQrMhw4vqdDlpulYROhxIKlVDQw3S44LWounY21qu6EcUpIBoL4zM7bBg3nTK6NHH9OKjlTBZ7Wmy8BtYtp4T8VpH6eJNZRwtP7JF+rrpr+FkTmUQ75fFNAmIOByOWDyij0PvJiajfMmc2nnryK2sjgrPDqnga16kHhEK13iBS3hsxlVRGIbLvq2xqt3WI59zXqWMo8dVGriCawsaaZk68TTGsfZAmg5NCslIKL7nsBsfclWNxxH3rRrFliqIFdWFjSM0115hSOKh7TldpupsZzkMJhSiQyCW2OZyJ6gEGl8N+FyKf5kfQ1yaUo4aejU2lRqnzbB1ag2Ow544luhSZw5wvAPppQOKMZzouUcA5kWbRlE4prC0esmk9wh/26Us5T1tCoZansM92ANoahcq851ST91B28+vcNpssGvzDfi3blAETPZfrb14MUYWfGKpqwwoSuufp1VE4pruNCYVlnrdxcXIU5rfku2EO4C6Wm+lTqhi8uuQro9Biv9ol29vGMr+GothngxMn3g5XMlfW5QlCochLYbKGZRGw96PnV3fUa1+O7RZpVNAowvD5KLSzFA6j4jyNddPyFUTNKgXqcN4SVm3yFhqO18phTpcKJUd7kOedpzBJkveD6QP/1+QwhUYNW60uzdnDpIDzDUCTcxRKXIf0ebHEFGpqA8+G2kOp1h4mPk3yXFm1F5iF+cRnk0qBWkyIfxk00DU29drqk5qPjF+aFC28Ib7/99ZmtpcNa4Y5DZ7O/HwxJqVR4qP2QRpbvA6glmwfqtH0rRqz+ymrFxaUIcb8NercsUU2PiyNLuBj/7aGsMdFtJlm5i8gCQzO+JBlx58JnaAsFyW+bUDA5iFPKZxmTqlAY3wUp9a7Vtk8DfqqJge1+3O/tcbsQLU+R1r/nsm1CbjSlJ9Cc/t7vTjpHilHOzCaL7Vem4EV+2vv6KN0pCW486XZnLeA0/xNCrxHv9OmUmiQ87Zp7fvgpcSqy01yUPrqAtAU9oN334JlJ4xXynlZtv9UCD/qM4rix4y6pTzpIrLa6UKl2rKvLEb9mYwmYDUyPCm/zVvdxq3RWZLyuqGPgnomXHvAyzfL2awIGsJmgWtPaLCPT6MJJVX+ozXSNbj6q+WJxw5oUovB0hNyaht22fRY3t9fxSb1NNmaKAJny3E+PYNuh+RbgNZEmXwbVjQsstKhEDsX3gDG/u8ajUZ1bRdSUpxJuzjqeyRRA7yJ9PegM4+G73gXc9My54jKdmgqYHp/0YFjmesR36xqtPld5gi486f5wScRHEp6u/UPGjopnDXCzHiamVrDspxbJeS/1vW/WZ03q9XP7pdpD552ejlIVpsTyC3QtFbfoccp5Yx/ELQ6JSvK17+xjBfih/Gft6BnSCQzWwS0b3fSWQWrz1/eQKNf/jMzwoVVwWWGZistD8p66vLDtpFq/yYHN5zs2TWGZctTiJIITp/tF09zS1KDs2u584fPV1ufyLeMzSdZlZ4/bMCkb2dIGZwm/TuzEGPYOAHKDWbueQrNX/Cy54AZOhzKlxSw/pRWpT5ps3PAwjSGpAVOjrN/2jdWwJWxn2FVW2xxlvt5Hj+ra4bCraT6hAcQxo9PaFXmbjU8j88y3co6E1EOBb19/w9yEAxEvbMqCyvMpiW8yVHgTDgyJN1a2zIquQ2xf63KGpI1PsVIG2FAdZdnq0W+H15TxLDXi4VYEknZNub/O20J+R5TzuuaQtZBAR3POGXQuj8N7TGEe23lXh8iH7xrkwwLR449gUqh0qLHEOsTVdT3ZSI3zmnkIV97SgAwKYzbRGk2PaKhDN4N6UTuKIv4mqhbH3kcbdCh11fS7KuooV0w6tqQh4QcXel72sKW9VjMDRWt/PwMh8Lc60yipIxOXSsb7LhTzz00QbRSrKiIZAzru7TWwgIdb2xj55JGbXcRNNZsu7C5pr3r3FgJ67FdFx8noM1uFLX1PBX0L00wxGfUu1MIXfDTenj6miq89v1LheGJsmLBSTKsYH9A+v6fdhRCOGqdcvyhxYNWl5suCvsIvxAAtxuFBFaLo3h0cPT9nfoIC1OqbMySajHnNOpOIb7Xqo1SDSmPdixwSTqslV4IcvTcqsFzwmohShvKX2bY0QFMdrhL08mzaNS6u/wT0gDciq93qRgYIbBzT/bk4OIg31f/Be0IrO6cOoivjTKOtkQtWQ8VnzprW1pRJ1NzTQIfoCo3sNsaq7BXYA9Byjxp0V9RyHHxmu8v5imsuz0vgz7vt6i4oyQFfdWD4YDxllOn0jtKSFutPqAlbfIqhXp2Am/XGzalEKo+V7YlYJcz+R36zWfwvCuoMmE3XG47pBophVDhKcVZsL7wvd0VhD3civueXnCmwBpI7ZmV3nRQU7c1RBOu0k7n8ry/TfQ7oN0OrMI7u15AWlXJX23UFHLNyUqH3HGH56LX84AbxoC1V9YF21HXJI5X2frL2flUy/R775ognJm28es6j2lHtet9D3EFp+gn1qWo77vzUCyWXPBY21zNXgGrxc0kL0C/9NJffDkgkUF/3ec5MjrukLnY+A7LGuDOJZ1W0S9ZRWcXUxbt/Q5LjPHDSr6+9tOHl0eb+psUiYWNru017cAIP3IPKb4NmPsu2cImO00A3YLTjIst85tU90OXHi9MRqJZcvFLBshylHZn41nFN0YNRjjkxXt07sdqdGa+2uRO5+WgqNMuL7xTlkTWOA0R+KE7nQkWze7ltvddwqo4SjGqtmF1yp+9lxuxXkjvJR7AEc/d6sNleTvIWsD4/HTK7GhEPbVP362O1VmSCPYHPPmDRdghcjRIAI/InAyI2sLXk9cr8q7Qo8QOKGDD4fjq5w6JY1oRjziUMjty1aLeDX0BNk/hMkIepXboIIykdeF29OwA1rMvWoyhcI+pSsXXafNs5i6bX6KUQA3tH0BrI5AS5Thc2BPm20QYIVhzSOOkfaGR+Xh+lb/9bP1fBvZ/iXBB1VjVy36Hrf/nGwGP8u4Rh6dvLcVu/S5g5+oGBRyGf6ssnmH+iJPGh6LxqE3KT4DYIaCC8eMvcmgCfSU/k2siuE5q1rGsHxMPTLD6G0biHcH1qUGgAnaX6lFMW8dTRvhrh4udQ7JlIQ0kFVyPVboA33TSRqVaYPr5UvhyzE4pQ6AYcFXhAjh+i5Sx8oFqxmYYXsRUKynRG63vpTM+k5vuNYoj8fJ7PQwIhkNBO1rpdlmmDKLiRsBDFJk0csNFz+pYjdIHEIlIHOEfZAueAb1pgOi4KNI7zg2YElfKWBooMTz8pgBmYR8espIeOCLyulou3kc4WfPlNhT5cfil3gUlcO7b7F3WUPFlEJ6nk1l2oPpyXX/ptQW25eL8a9AuJ5Dt9CJJoukBY3CNVsdJME+u6NSCW6ULJ3rgVGNbfw2LqQd8KZ/vFhXTM2TZkA0D33blV5xLQXNiGd70o4mYjtAme3Hkl5JAznCIZX+GogXEfZ379/uwJ/ttqm0uNxBDb/eTf0u7lMIJpicA/HQhcf5C+JQ6xbcieACcpsG/p1wqoNkTTKWRVNpmjWDqNySjAOymF/ufZ84i6PPlZk3up45dVX3JnyhCVXV9cnX1erOc/6OKkxv2fHLcnNfhw0SK1PM837fUR7g+b+6T+f+I2PFCd2x7PMbXcP+vL9oXX3zxxRdffPHFF1988cX/P/wfxd+EwsxVYqMAAAAASUVORK5CYII='),
          ),
          Text('RAS')
        ],
      ),
    );
  }
}

GalleryPage() {}
