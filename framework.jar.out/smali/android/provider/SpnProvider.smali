.class public Landroid/provider/SpnProvider;
.super Ljava/lang/Object;
.source "SpnProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SpnProvider$1;,
        Landroid/provider/SpnProvider$SPNObject;
    }
.end annotation


# static fields
.field private static final LIST_MCC_MNC_SPN:[Landroid/provider/SpnProvider$SPNObject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 69
    const/16 v0, 0x3b8

    new-array v6, v0, [Landroid/provider/SpnProvider$SPNObject;

    const/4 v7, 0x0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "Test1-1"

    const-string v4, "Test PLMN 1-1"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "Test1-2"

    const-string v4, "Test PLMN 1-2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/4 v7, 0x2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "Test2-1"

    const-string v4, "Test PLMN 2-1"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/4 v7, 0x3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xca

    const/4 v2, 0x1

    const-string v3, "Cosmote"

    const-string v4, "COSMOTE - Mobile Telecommunications S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/4 v7, 0x4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xca

    const/4 v2, 0x5

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Greece"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/4 v7, 0x5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xca

    const/16 v2, 0x9

    const-string v3, "Wind"

    const-string v4, "Wind Hella telecommunications S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/4 v7, 0x6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xca

    const/16 v2, 0xa

    const-string v3, "Wind"

    const-string v4, "Wind Hella telecommunications S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/4 v7, 0x7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xcc

    const/4 v2, 0x3

    const-string v3, "Rabo Mobiel"

    const-string v4, "KPN"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xcc

    const/4 v2, 0x4

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Netherlands"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xcc

    const/16 v2, 0x8

    const-string v3, "KPN"

    const-string v4, "KPN"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xcc

    const/16 v2, 0xc

    const-string v3, "Telfort"

    const-string v4, "KPN"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xcc

    const/16 v2, 0x10

    const-string v3, "T-Mobile / Ben"

    const-string v4, "T-Mobile Netherlands B.V"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xcc

    const/16 v2, 0x14

    const-string v3, "Orange Nederland"

    const-string v4, "T-Mobile Netherlands B.V"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xcc

    const/16 v2, 0x15

    const-string v3, "NS Railinfrabeheer B.V."

    const-string v4, "NS Railinfrabeheer B.V."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xce

    const/4 v2, 0x1

    const-string v3, "Proximus"

    const-string v4, "Belgacom Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xce

    const/16 v2, 0xa

    const-string v3, "Mobistar"

    const-string v4, "France Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x10

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xce

    const/16 v2, 0x14

    const-string v3, "BASE"

    const-string v4, "KPN"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x11

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/4 v2, 0x0

    const-string v3, "Orange"

    const-string v4, "Orange"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x12

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/4 v2, 0x1

    const-string v3, "Orange"

    const-string v4, "France Orange"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x13

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/4 v2, 0x2

    const-string v3, "Orange"

    const-string v4, "Orange"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x14

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/4 v2, 0x5

    const-string v3, "Globalstar Europe"

    const-string v4, "Globalstar Europe"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x15

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/4 v2, 0x6

    const-string v3, "Globalstar Europe"

    const-string v4, "Globalstar Europe"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x16

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/4 v2, 0x7

    const-string v3, "Globalstar Europe"

    const-string v4, "Globalstar Europe"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x17

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/16 v2, 0xa

    const-string v3, "SFR"

    const-string v4, "SFR"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x18

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/16 v2, 0xb

    const-string v3, "SFR"

    const-string v4, "SFR"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x19

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/16 v2, 0x14

    const-string v3, "Bouygues"

    const-string v4, "Bouygues Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd0

    const/16 v2, 0x15

    const-string v3, "Bouygues"

    const-string v4, "Bouygues Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd5

    const/4 v2, 0x3

    const-string v3, "Mobiland"

    const-string v4, "Servei De Tele. DAndorra"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd6

    const/4 v2, 0x1

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Spain"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd6

    const/4 v2, 0x3

    const-string v3, "Orange"

    const-string v4, "France Telcom Espana SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd6

    const/4 v2, 0x4

    const-string v3, "Yoigo"

    const-string v4, "Xfera Moviles SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd6

    const/4 v2, 0x5

    const-string v3, "TME"

    const-string v4, "Telefonica Moviles Espana"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x20

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd6

    const/4 v2, 0x6

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Spain"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x21

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd6

    const/4 v2, 0x7

    const-string/jumbo v3, "movistar"

    const-string v4, "Telefonica Moviles Espana"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x22

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd6

    const/16 v2, 0x9

    const-string v3, "Orange"

    const-string v4, "France Telcom Espana SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x23

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd8

    const/16 v2, 0x14

    const-string v3, "Pannon"

    const-string v4, "Pannon GSM Tavkozlesi Zrt."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x24

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd8

    const/16 v2, 0x1e

    const-string v3, "T-Mobile"

    const-string v4, "Magyar Telkom Plc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x25

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xd8

    const/16 v2, 0x46

    const-string v3, "Vodafone"

    const-string v4, "Vodafonei Magyarorszag Zrt."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x26

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xda

    const/4 v2, 0x3

    const-string v3, "ERONET"

    const-string v4, "Public Enterprise Croatian telecom Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x27

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xda

    const/4 v2, 0x5

    const-string v3, "m:tel"

    const-string v4, "RS Telecommunications JSC Banja Luka"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x28

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xda

    const/16 v2, 0x5a

    const-string v3, "BH Mobile"

    const-string v4, "BH Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x29

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xdb

    const/4 v2, 0x1

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Croatia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xdb

    const/4 v2, 0x2

    const-string v3, "Tele2"

    const-string v4, "Tele2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xdb

    const/16 v2, 0xa

    const-string v3, "VIPnet"

    const-string v4, "Vipnet"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xdc

    const/4 v2, 0x1

    const-string v3, "Telenor"

    const-string v4, "Telenor Serbia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xdc

    const/4 v2, 0x3

    const-string v3, "Telekom Sribija"

    const-string v4, "Telekom Srbija"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xdc

    const/4 v2, 0x5

    const-string v3, "VIP Mobile"

    const-string v4, "VIP Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xde

    const/4 v2, 0x1

    const-string v3, "TIM"

    const-string v4, "Telecom Italiz SpA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x30

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xde

    const/4 v2, 0x2

    const-string v3, "Elsacom"

    const-string v4, "Elsacom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x31

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xde

    const/16 v2, 0xa

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Omnitel N.V."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x32

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xde

    const/16 v2, 0x1e

    const-string v3, "RRI"

    const-string v4, "Rete  Ferroviaria Italiana"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x33

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xde

    const/16 v2, 0x58

    const-string v3, "Wind"

    const-string v4, "Wind Telecomunicazioni SpA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x34

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xde

    const/16 v2, 0x63

    const-string v3, "3 Italia"

    const-string v4, "Hutchison 3G"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x35

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe2

    const/4 v2, 0x1

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Romania"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x36

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe2

    const/4 v2, 0x3

    const-string v3, "Cosmote"

    const-string v4, "Cosmote Romania"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x37

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe2

    const/4 v2, 0x5

    const-string v3, "DIGI.mobil"

    const-string v4, "RCS&RDS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x38

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe2

    const/16 v2, 0xa

    const-string v3, "Orange"

    const-string v4, "Orange Romania"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x39

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe4

    const/4 v2, 0x1

    const-string v3, "Swisscom"

    const-string v4, "Swisscom Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe4

    const/4 v2, 0x2

    const-string v3, "Sunrise"

    const-string v4, "Sunrise Communications AG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe4

    const/4 v2, 0x3

    const-string v3, "Orange"

    const-string v4, "Orange Communications SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe4

    const/4 v2, 0x6

    const-string v3, "SBB AG"

    const-string v4, "SBB AG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe4

    const/4 v2, 0x7

    const-string v3, "IN&Phone"

    const-string v4, "IN&Phone SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe4

    const/16 v2, 0x8

    const-string v3, "Tele2"

    const-string v4, "Tele2 Telecommunications AG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe6

    const/4 v2, 0x1

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Czech Republic"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x40

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe6

    const/4 v2, 0x2

    const-string v3, "EUROTEL PRAHA"

    const-string v4, "Telefonica O2 Czech Republic"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x41

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe6

    const/4 v2, 0x3

    const-string v3, "OSKAR"

    const-string v4, "Vodafone Czech Republic"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x42

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe6

    const/16 v2, 0x62

    const-string v3, "CZDC s.o."

    const-string v4, "CZDC s.o."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x43

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe7

    const/4 v2, 0x1

    const-string v3, "Orange"

    const-string v4, "Orange Slovensko"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x44

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe7

    const/4 v2, 0x2

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Slovensko"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x45

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe7

    const/4 v2, 0x4

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Slovensko"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x46

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe7

    const/4 v2, 0x6

    const-string v3, "O2"

    const-string v4, "Telefonica O2 Slovakia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x47

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe8

    const/4 v2, 0x1

    const-string v3, "A1"

    const-string v4, "Mobilkom Austria"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x48

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe8

    const/4 v2, 0x3

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Austria"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x49

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe8

    const/4 v2, 0x5

    const-string v3, "Orange"

    const-string v4, "Orange Austria"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x4a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe8

    const/4 v2, 0x7

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Austria"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x4b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xe8

    const/16 v2, 0xa

    const-string v3, "3"

    const-string v4, "Hutchison 3G"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x4c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/4 v2, 0x0

    const-string v3, "BT"

    const-string v4, "British Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x4d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/4 v2, 0x1

    const-string v3, "UK01"

    const-string v4, "Mapesbury Communications Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x4e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/4 v2, 0x2

    const-string v3, "O2"

    const-string v4, "O2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x4f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/4 v2, 0x3

    const-string v3, "Jersey Telenet"

    const-string v4, "Jersey Telnet"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x50

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0xa

    const-string v3, "O2"

    const-string v4, "Telefonica O2 UK Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x51

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0xb

    const-string v3, "O2"

    const-string v4, "Telefonica Europe"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x52

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0xc

    const-string v3, "Railtrack"

    const-string v4, "Network Rail Infrastructure Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x53

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0xf

    const-string v3, "Vodafone"

    const-string v4, "Vodafone United Kingdom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x54

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x10

    const-string v3, "Opal Telecom Ltd"

    const-string v4, "Opal Telecom Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x55

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x12

    const-string v3, "Cloud9"

    const-string v4, "Wire9 Telecom plc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x56

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x13

    const-string v3, "Telaware"

    const-string v4, "Telaware plc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x57

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x14

    const-string v3, "3"

    const-string v4, "Hutchison 3G UK Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x58

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x1e

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x59

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x1f

    const-string v3, "Virgin"

    const-string v4, "Virgin Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x5a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x20

    const-string v3, "Virgin"

    const-string v4, "Virgin Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x5b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x21

    const-string v3, "Orange"

    const-string v4, "Orange PCS Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x5c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x22

    const-string v3, "Orange"

    const-string v4, "Orange PCS Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x5d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x32

    const-string v3, "JT-Wave"

    const-string v4, "Jersey Telecoms"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x5e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x37

    const-string v3, "Cable & Wireless Guernsey / Sure Mobile (Jersey)"

    const-string v4, "Cable & Wireless Guernsey / Sure Mobile (Jersey)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x5f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x3a

    const-string v3, "Manx Telecom"

    const-string v4, "Manx Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x60

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xea

    const/16 v2, 0x4b

    const-string v3, "Inquam"

    const-string v4, "Inquam Telecom (Holdings) Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x61

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xee

    const/4 v2, 0x1

    const-string v3, "TDC"

    const-string v4, "TDC A/S"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x62

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xee

    const/4 v2, 0x2

    const-string v3, "Sonofon"

    const-string v4, "Telenor"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x63

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xee

    const/4 v2, 0x6

    const-string v3, "3"

    const-string v4, "Hi3G Denmark ApS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x64

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xee

    const/16 v2, 0x1e

    const-string v3, "Telia"

    const-string v4, "Telia Nattjanster Norden AB"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x65

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xee

    const/16 v2, 0x46

    const-string v3, "Tele2"

    const-string v4, "Telenor"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x66

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/4 v2, 0x1

    const-string v3, "Telia"

    const-string v4, "TeliaSonera Mobile Networks"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x67

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/4 v2, 0x2

    const-string v3, "3"

    const-string v4, "3"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x68

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/4 v2, 0x4

    const-string v3, "3G Infrastructure Services"

    const-string v4, "3G Infrastructure Services"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x69

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/4 v2, 0x5

    const-string v3, "Sweden 3G"

    const-string v4, "Sweden 3G"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x6a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/4 v2, 0x6

    const-string v3, "Telenor"

    const-string v4, "Telenor"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x6b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/4 v2, 0x7

    const-string v3, "Tele2"

    const-string v4, "Tele2 AB"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x6c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/16 v2, 0x8

    const-string v3, "Telenor"

    const-string v4, "Telenor"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x6d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf0

    const/16 v2, 0x15

    const-string v3, "Banverket"

    const-string v4, "Banverket"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x6e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf2

    const/4 v2, 0x1

    const-string v3, "Telenor"

    const-string v4, "Telenor"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x6f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf2

    const/4 v2, 0x2

    const-string v3, "NetCom"

    const-string v4, "NetCom GSM"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x70

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf2

    const/4 v2, 0x5

    const-string v3, "Network Norway"

    const-string v4, "Network Norway"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x71

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf2

    const/16 v2, 0x14

    const-string v3, "Jernbaneverket AS"

    const-string v4, "Jernbaneverket AS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x72

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf4

    const/4 v2, 0x3

    const-string v3, "DNA"

    const-string v4, "DNA Oy"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x73

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf4

    const/4 v2, 0x5

    const-string v3, "Elisa"

    const-string v4, "Elisa Oyj"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x74

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf4

    const/16 v2, 0xc

    const-string v3, "DNA Oy"

    const-string v4, "DNA Oy"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x75

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf4

    const/16 v2, 0xe

    const-string v3, "AMT"

    const-string v4, "Alands Mobiltelefon"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x76

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf4

    const/16 v2, 0x5b

    const-string v3, "Sonera"

    const-string v4, "TeliaSonera Finland Oyj"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x77

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf6

    const/4 v2, 0x1

    const-string v3, "Omnitel"

    const-string v4, "Omnitel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x78

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf6

    const/4 v2, 0x2

    const-string v3, "BITE"

    const-string v4, "UAB Bite Lietuva"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x79

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf6

    const/4 v2, 0x3

    const-string v3, "Tele 2"

    const-string v4, "Tele 2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x7a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf7

    const/4 v2, 0x1

    const-string v3, "LMT"

    const-string v4, "Latvian Mobile Telephone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x7b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf7

    const/4 v2, 0x2

    const-string v3, "Tele2"

    const-string v4, "Tele2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x7c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf7

    const/4 v2, 0x5

    const-string v3, "Bite"

    const-string v4, "Bite Latvija"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x7d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf8

    const/4 v2, 0x1

    const-string v3, "EMT"

    const-string v4, "Estonian Mobile Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x7e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf8

    const/4 v2, 0x2

    const-string v3, "Elisa"

    const-string v4, "Elisa Eesti"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x7f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xf8

    const/4 v2, 0x3

    const-string v3, "Tele 2"

    const-string v4, "Tele 2 Eesti"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x80

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/4 v2, 0x1

    const-string v3, "MTS"

    const-string v4, "Mobile Telesystems"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x81

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/4 v2, 0x2

    const-string v3, "MegaFon"

    const-string v4, "MegaFon OJSC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x82

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/4 v2, 0x3

    const-string v3, "NCC"

    const-string v4, "Nizhegorodskaya Cellular Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x83

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/4 v2, 0x5

    const-string v3, "ETK"

    const-string v4, "Yeniseytelecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x84

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/4 v2, 0x7

    const-string v3, "SMARTS"

    const-string v4, "Zao SMARTS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x85

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0xc

    const-string v3, "Baykalwstern"

    const-string v4, "Baykal Westcom/New Telephone Company/Far Eastern Cellular"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x86

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0xe

    const-string v3, "SMARTS"

    const-string v4, "SMARTS Ufa"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x87

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0x10

    const-string v3, "NTC"

    const-string v4, "New Telephone Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x88

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0x11

    const-string v3, "Utel"

    const-string v4, "JSC Uralsvyazinform"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x89

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0x13

    const-string v3, "INDIGO"

    const-string v4, "INDIGO"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x8a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0x14

    const-string v3, "Tele2"

    const-string v4, "Tele2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x8b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0x17

    const-string v3, "Mobicom - Novosibirsk"

    const-string v4, "Mobicom - Novosibirsk"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x8c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0x27

    const-string v3, "Utel"

    const-string v4, "Uralsvyazinform"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x8d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xfa

    const/16 v2, 0x63

    const-string v3, "Beeline"

    const-string v4, "OJSC VimpelCom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x8e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xff

    const/4 v2, 0x1

    const-string v3, "MTS"

    const-string v4, "Ukrainian Mobile Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x8f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xff

    const/4 v2, 0x2

    const-string v3, "Beeline"

    const-string v4, "Ukrainian Radio Systems"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x90

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xff

    const/4 v2, 0x3

    const-string v3, "Kyivstar"

    const-string v4, "Kyivstar GSM JSC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x91

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xff

    const/4 v2, 0x5

    const-string v3, "Golden Telecom"

    const-string v4, "Golden Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x92

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xff

    const/4 v2, 0x6

    const-string v3, "life:)"

    const-string v4, "Astelit"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x93

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0xff

    const/4 v2, 0x7

    const-string v3, "Utel"

    const-string v4, "Ukrtelecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x94

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x101

    const/4 v2, 0x1

    const-string v3, "Velcom"

    const-string v4, "Velcom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x95

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x101

    const/4 v2, 0x2

    const-string v3, "MTS"

    const-string v4, "JLLC Mobile TeleSystems"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x96

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x101

    const/4 v2, 0x4

    const-string v3, "life:)"

    const-string v4, "Belarussian Telecommunications Network"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x97

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x103

    const/4 v2, 0x1

    const-string v3, "Orange"

    const-string v4, "Orange Moldova"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x98

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x103

    const/4 v2, 0x2

    const-string v3, "Moldcell"

    const-string v4, "Moldcell"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x99

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x103

    const/4 v2, 0x4

    const-string v3, "Eventis"

    const-string v4, "Eventis Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x9a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x104

    const/4 v2, 0x1

    const-string v3, "Plus"

    const-string v4, "Polkomtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x9b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x104

    const/4 v2, 0x2

    const-string v3, "Era"

    const-string v4, "Polska Telefonia Cyfrowa (PTC)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x9c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x104

    const/4 v2, 0x3

    const-string v3, "Orange"

    const-string v4, "PTK Centertel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x9d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x104

    const/4 v2, 0x6

    const-string v3, "Play"

    const-string v4, "P4 Sp. zo.o"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x9e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x104

    const/16 v2, 0xc

    const-string v3, "Cyfrowy Polsat"

    const-string v4, "Cyfrowy Polsat"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x9f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x104

    const/16 v2, 0xe

    const-string v3, "Sferia"

    const-string v4, "Sferia S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/4 v2, 0x1

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/4 v2, 0x2

    const-string v3, "Vodafone"

    const-string v4, "Vodafone D2 GmbH"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/4 v2, 0x3

    const-string v3, "E-Plus"

    const-string v4, "E-Plus Mobilfunk"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/4 v2, 0x4

    const-string v3, "Vodafone"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/4 v2, 0x5

    const-string v3, "E-Plus"

    const-string v4, "E-Plus Mobilfunk"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/4 v2, 0x6

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/4 v2, 0x7

    const-string v3, "O2"

    const-string v4, "O2 (Germany) GmbH & Co. OHG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0x8

    const-string v3, "O2"

    const-string v4, "O2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0x9

    const-string v3, "Vodafone"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xa9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0xa

    const-string v3, "Arcor AG & Co"

    const-string v4, "Arcor AG * Co"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xaa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0xb

    const-string v3, "O2"

    const-string v4, "O2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xab

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0xf

    const-string v3, "Airdata"

    const-string v4, "Airdata"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xac

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0x3c

    const-string v3, "DB Telematik"

    const-string v4, "DB Telematik"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xad

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0x4c

    const-string v3, "Siemens AG"

    const-string v4, "Siemens AG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xae

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x106

    const/16 v2, 0x4d

    const-string v3, "E-Plus"

    const-string v4, "E-Plus"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xaf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x10a

    const/4 v2, 0x1

    const-string v3, "GibTel"

    const-string v4, "Gibraltar Telecoms"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x10c

    const/4 v2, 0x1

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Portugal"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x10c

    const/4 v2, 0x3

    const-string v3, "Optimus"

    const-string v4, "Sonaecom - Servicos de Comunicacoes, S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x10c

    const/4 v2, 0x6

    const-string v3, "TMN"

    const-string v4, "Telecomunicacoes Moveis Nacionais"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x10e

    const/4 v2, 0x1

    const-string v3, "LuxGSM"

    const-string v4, "P&T Luxembourg"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x10e

    const/16 v2, 0x4d

    const-string v3, "Tango"

    const-string v4, "Tango SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x10e

    const/16 v2, 0x63

    const-string v3, "Voxmobile"

    const-string v4, "VOXmobile S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x110

    const/4 v2, 0x1

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Ireland"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x110

    const/4 v2, 0x2

    const-string v3, "O2"

    const-string v4, "O2 Ireland"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x110

    const/4 v2, 0x3

    const-string v3, "Meteor"

    const-string v4, "Meteor"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xb9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x110

    const/4 v2, 0x5

    const-string v3, "3"

    const-string v4, "Hutchison 3G IReland limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xba

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x112

    const/4 v2, 0x1

    const-string v3, "Siminn"

    const-string v4, "Iceland Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xbb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x112

    const/4 v2, 0x2

    const-string v3, "Vodafone"

    const-string v4, "iOg fjarskipti hf"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xbc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x112

    const/4 v2, 0x4

    const-string v3, "Viking"

    const-string v4, "IMC Island ehf"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xbd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x112

    const/4 v2, 0x7

    const-string v3, "IceCell"

    const-string v4, "IceCell ehf"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xbe

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x112

    const/16 v2, 0xb

    const-string v3, "Nova"

    const-string v4, "Nova ehf"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xbf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x114

    const/4 v2, 0x1

    const-string v3, "AMC"

    const-string v4, "Albanian Mobile Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x114

    const/4 v2, 0x2

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Albania"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x114

    const/4 v2, 0x3

    const-string v3, "Eagle Mobile"

    const-string v4, "Eagle Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x116

    const/4 v2, 0x1

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Malta"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x116

    const/16 v2, 0x15

    const-string v3, "GO"

    const-string v4, "Mobisle Communications Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x116

    const/16 v2, 0x4d

    const-string v3, "Melita"

    const-string v4, "Melita Mobile Ltd. (3G Telecommunictaions Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x118

    const/4 v2, 0x1

    const-string v3, "Cytamobile-Vodafone"

    const-string v4, "Cyprus Telcommunications Auth"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x118

    const/16 v2, 0xa

    const-string v3, "MTN"

    const-string v4, "Areeba Ltde"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11a

    const/4 v2, 0x1

    const-string v3, "Geocell"

    const-string v4, "Geocell Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11a

    const/4 v2, 0x2

    const-string v3, "Magti"

    const-string v4, "Magticom GSM"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xc9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11a

    const/4 v2, 0x4

    const-string v3, "Beeline"

    const-string v4, "Mobitel LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xca

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11a

    const/16 v2, 0x43

    const-string v3, "Aquafon"

    const-string v4, "Aquafon"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xcb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11a

    const/16 v2, 0x58

    const-string v3, "A-Mobile"

    const-string v4, "A-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xcc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11b

    const/4 v2, 0x1

    const-string v3, "Beeline"

    const-string v4, "ArmenTel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xcd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11b

    const/4 v2, 0x5

    const-string v3, "VivaCell-MTS"

    const-string v4, "K Telecom CJSC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xce

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11c

    const/4 v2, 0x1

    const-string v3, "M-TEL"

    const-string v4, "Mobiltel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xcf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11c

    const/4 v2, 0x3

    const-string v3, "Vivatel"

    const-string v4, "BTC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11c

    const/4 v2, 0x5

    const-string v3, "GLOBUL"

    const-string v4, "Cosmo Bulgaria Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11e

    const/4 v2, 0x1

    const-string v3, "Turkcell"

    const-string v4, "Turkcell lletisim Hizmetleri A.S."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11e

    const/4 v2, 0x2

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Turkey"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x11e

    const/4 v2, 0x3

    const-string v3, "Avea"

    const-string v4, "Avea"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x120

    const/4 v2, 0x1

    const-string v3, "Faroese"

    const-string v4, "Faroese Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x120

    const/4 v2, 0x2

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Faroe Islands"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x122

    const/4 v2, 0x1

    const-string v3, "TELE Greenland A/S"

    const-string v4, "Tele Greenland A/S"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x124

    const/4 v2, 0x1

    const-string v3, "PRIMA"

    const-string v4, "San Marino Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x125

    const/16 v2, 0x28

    const-string v3, "Si.mobil"

    const-string v4, "SI.MOBIL d.d"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xd9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x125

    const/16 v2, 0x29

    const-string v3, "Si.mobil"

    const-string v4, "Mobitel D.D."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xda

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x125

    const/16 v2, 0x40

    const-string v3, "T-2"

    const-string v4, "T-2 d.o.o."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xdb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x125

    const/16 v2, 0x46

    const-string v3, "Tusmobil"

    const-string v4, "Tusmobil d.o.o."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xdc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x126

    const/4 v2, 0x1

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Makedonija"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xdd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x126

    const/4 v2, 0x2

    const-string v3, "Cosmofon"

    const-string v4, "Cosmofon"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xde

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x126

    const/4 v2, 0x2

    const-string v3, "VIP Operator"

    const-string v4, "VIP Operator"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xdf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x127

    const/4 v2, 0x1

    const-string v3, "Swisscom"

    const-string v4, "Swisscom Schweiz AG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x127

    const/4 v2, 0x2

    const-string v3, "Orange"

    const-string v4, "Orange Liechtenstein AG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x127

    const/4 v2, 0x5

    const-string v3, "FL1"

    const-string v4, "Mobilkom Liechtenstein AG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x127

    const/16 v2, 0x4d

    const-string v3, "Tele 2"

    const-string v4, "Belgacom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x129

    const/4 v2, 0x1

    const-string v3, "ProMonte"

    const-string v4, "ProMonte GSM"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x129

    const/4 v2, 0x2

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile Montenegro LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x129

    const/4 v2, 0x3

    const-string v3, "m:tel CG"

    const-string v4, "MTEL CG"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x12e

    const/16 v2, 0x48

    const-string v3, "Rogers"

    const-string v4, "Rogers"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x12e

    const/16 v2, 0x56

    const-string v3, "Telus"

    const-string v4, "Telus"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x12e

    const/16 v2, 0x172

    const-string v3, "Fido"

    const-string v4, "Fido"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xe9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x12e

    const/16 v2, 0x26c

    const-string v3, "ICE Wireless"

    const-string v4, "ICE Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xea

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x12e

    const/16 v2, 0x2d0

    const-string v3, "Rogers Wireless"

    const-string v4, "Rogers Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xeb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x134

    const/4 v2, 0x1

    const-string v3, "Ameris"

    const-string v4, "St. Pierre-et-Miquelon Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xec

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/4 v2, 0x0

    const-string v3, "Verizon"

    const-string v4, "Verizon"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xed

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x14

    const-string v3, "Union Telephony Company"

    const-string v4, "Union Telephony Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xee

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x1a

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xef

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x1e

    const-string v3, "Centennial"

    const-string v4, "Centennial Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x26

    const-string v3, "AT&T"

    const-string v4, "AT&T Mobility"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x28

    const-string v3, "Concho"

    const-string v4, "Concho Cellular Telephony Co., Inc."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x2e

    const-string v3, "SIMMETRY"

    const-string v4, "TMP Corp"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x46

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x50

    const-string v3, "Corr"

    const-string v4, "Corr Wireless Communications LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x5a

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x64

    const-string v3, "Plateau Wireless"

    const-string v4, "New Mexico RSA 4 East Ltd. Partnership"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x6e

    const-string v3, "PTI Pacifica"

    const-string v4, "PTI Pacifica Inc."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x96

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xf9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0xaa

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xfa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0xb4

    const-string v3, "West Cen"

    const-string v4, "West Central"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xfb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0xbe

    const-string v3, "Dutch Harbor"

    const-string v4, "Alaska Wireless Communications, LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xfc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x104

    const-string v3, "T-Mobile"

    const-string v4, "T-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xfd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x12c

    const-string v3, "Get Mobile Inc"

    const-string v4, "Get Mobile Inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xfe

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x137

    const-string v3, "Farmers Wireless"

    const-string v4, "Farmers Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0xff

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x14a

    const-string v3, "Cell One"

    const-string v4, "Cellular One"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x100

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x154

    const-string v3, "Westlink"

    const-string v4, "Westlink Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x101

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x17c

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x102

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x190

    const-string v3, "i CAN_GSM"

    const-string v4, "Wave runner LLC (Guam)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x103

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x19a

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x104

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x1a4

    const-string v3, "Cincinnati Bell"

    const-string v4, "Cincinnati Bell Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x105

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x1ae

    const-string v3, "Alaska Digitel"

    const-string v4, "Alaska Digitel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x106

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x1c2

    const-string v3, "Viaero"

    const-string v4, "Viaero Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x107

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x1cc

    const-string v3, "Simmetry"

    const-string v4, "TMP Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x108

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x21c

    const-string v3, "Oklahoma Western"

    const-string v4, "Oklahoma Western Telephone Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x109

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x230

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x10a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x23a

    const-string v3, "Cellular One"

    const-string v4, "MTPCS, LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x10b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x24e

    const-string v3, "Alltel"

    const-string v4, "Alltel Communications Inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x10c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x262

    const-string v3, "Epic Touch"

    const-string v4, "Elkhart Telephone Co."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x10d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x26c

    const-string v3, "Coleman County Telecom"

    const-string v4, "Coleman County Telecommunications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x10e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x280

    const-string v3, "Airadigim"

    const-string v4, "Airadigim Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x10f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x28a

    const-string v3, "Jasper"

    const-string v4, "Jasper wireless, inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x110

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x2a8

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x111

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x302

    const-string v3, "i wireless"

    const-string v4, "lows Wireless Services"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x112

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x316

    const-string v3, "PinPoint"

    const-string v4, "PinPoint Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x113

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x33e

    const-string v3, "Caprock"

    const-string v4, "Caprock Cellular"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x114

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x352

    const-string v3, "Aeris"

    const-string v4, "Aeris Communications, Inc."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x115

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x366

    const-string v3, "PACE"

    const-string v4, "Kaplan Telephone Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x116

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x370

    const-string v3, "Advantage"

    const-string v4, "Advantage Cellular Systems"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x117

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x37a

    const-string v3, "Unicel"

    const-string v4, "Rural cellular Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x118

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x384

    const-string v3, "Taylor"

    const-string v4, "Taylor Telecommunications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x119

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x38e

    const-string v3, "First Cellular"

    const-string v4, "First Cellular of Southern Illinois"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x11a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x3b6

    const-string v3, "XIT Wireless"

    const-string v4, "Texas RSA 1 dba XIT Cellular"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x11b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x3ca

    const-string v3, "Globalstar"

    const-string v4, "Globalstar"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x11c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x136

    const/16 v2, 0x3d4

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x11d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0xa

    const-string v3, "Chariton Valley"

    const-string v4, "Chariton Valley Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x11e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x14

    const-string v3, "Missouri RSA 5 Partnership"

    const-string v4, "Missouri RSA 5 Partnership"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x11f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x1e

    const-string v3, "Indigo Wireless"

    const-string v4, "Indigo Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x120

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x28

    const-string v3, "Commnet Wireless"

    const-string v4, "Commnet Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x121

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x32

    const-string v3, "Wikes Cellular"

    const-string v4, "Wikes Cellular"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x122

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x3c

    const-string v3, "Farmers Cellular"

    const-string v4, "Farmers Cellular Telephone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x123

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x46

    const-string v3, "Easterbrooke"

    const-string v4, "Easterbrooke Cellular Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x124

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x50

    const-string v3, "Pine Cellular"

    const-string v4, "Pine Telephone Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x125

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x5a

    const-string v3, "Long Lines Wireless"

    const-string v4, "Long Lines Wireless LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x126

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x64

    const-string v3, "High Plains Wireless"

    const-string v4, "High Plains Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x127

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x6e

    const-string v3, "High Plains Wireless"

    const-string v4, "High Plains Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x128

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x82

    const-string v3, "Cell One Amarillo"

    const-string v4, "Cell One Amarillo"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x129

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0x96

    const-string v3, "Wilkes Cellular"

    const-string v4, "Wilkes Cellular"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x12a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0xaa

    const-string v3, "PetroCom"

    const-string v4, "Broadpoint Inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x12b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0xb4

    const-string v3, "AT&T"

    const-string v4, "AT&T"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x12c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x137

    const/16 v2, 0xd2

    const-string v3, "Farmers Cellular"

    const-string v4, "Farmers Cellular Telephone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x12d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x14a

    const/16 v2, 0xb

    const-string v3, "Claro"

    const-string v4, "Puerto Rico Telephony Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x12e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x14e

    const/4 v2, 0x2

    const-string v3, "Telcel"

    const-string v4, "America Movil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x12f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x14e

    const/4 v2, 0x3

    const-string/jumbo v3, "movistar"

    const-string v4, "Pegaso Comunicaciones y Sistemas"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x130

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x152

    const/16 v2, 0x14

    const-string v3, "Cable & Wireless"

    const-string v4, "Cable & Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x131

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x152

    const/16 v2, 0x32

    const-string v3, "Digicel"

    const-string v4, "Digicel (Jamaica) Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x132

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x152

    const/16 v2, 0x46

    const-string v3, "Claro"

    const-string v4, "Oceanic Digital Jamaica Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x133

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x154

    const/4 v2, 0x1

    const-string v3, "Orange"

    const-string v4, "Orange Caraibe Mobiles"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x134

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x154

    const/4 v2, 0x2

    const-string v3, "Outremer"

    const-string v4, "Outremer Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x135

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x154

    const/4 v2, 0x3

    const-string v3, "Teleceli"

    const-string v4, "Saint Martin et Saint Barthelemy Telcell Sarl"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x136

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x154

    const/16 v2, 0x8

    const-string v3, "MIO GSM"

    const-string v4, "Dauphin Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x137

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x154

    const/16 v2, 0x14

    const-string v3, "Digicel"

    const-string v4, "DIGICEL Antilles Franccaise Guyane"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x138

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x156

    const/16 v2, 0x258

    const-string v3, "bmobile"

    const-string v4, "cable &Wireless Barbados Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x139

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x156

    const/16 v2, 0x2ee

    const-string v3, "Digicel"

    const-string v4, "Digicel (Jamaica) Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x13a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x158

    const/16 v2, 0x1e

    const-string v3, "APUA"

    const-string v4, "Antigua Public Utilities Authority"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x13b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x158

    const/16 v2, 0x398

    const-string v3, "bmobile"

    const-string v4, "Cable & Wireless Caribbean Cellular (Antigua) Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x13c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x158

    const/16 v2, 0x3a2

    const-string v3, "Digicel"

    const-string v4, "Antigua Wireless Ventures Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x13d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x15a

    const/16 v2, 0x32

    const-string v3, "Digicel"

    const-string v4, "Digicel Cayman Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x13e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x15a

    const/16 v2, 0x8c

    const-string v3, "Cable & Wireless"

    const-string v4, "Cable & Wireless (Caymand Islands) Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x13f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x15c

    const/16 v2, 0xaa

    const-string v3, "Cable & Wireless"

    const-string v4, "Cable & Wireless (West Indies)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x140

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x15c

    const/16 v2, 0x23a

    const-string v3, "Caribbean Cellular Telephone"

    const-string v4, "Caribbean Cellular Telephone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x141

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x15e

    const/4 v2, 0x1

    const-string v3, "Digicel Bermuda"

    const-string v4, "Telecommunications (Bermuda & West Indies) Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x142

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x15e

    const/4 v2, 0x2

    const-string v3, "Mobility"

    const-string v4, "M3 wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x143

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x15e

    const/16 v2, 0x26

    const-string v3, "Digicel"

    const-string v4, "Digicel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x144

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x160

    const/16 v2, 0x1e

    const-string v3, "Digicel"

    const-string v4, "Digicel Grenada Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x145

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x160

    const/16 v2, 0x6e

    const-string v3, "Cable & Wireless"

    const-string v4, "Cable & Wireless Grenada Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x146

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x16a

    const/16 v2, 0x33

    const-string v3, "Telcell"

    const-string v4, "Telcell N.V."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x147

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x16a

    const/16 v2, 0x45

    const-string v3, "Digicel"

    const-string v4, "Curacao Telecom N.V."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x148

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x16a

    const/16 v2, 0x5b

    const-string v3, "UTS"

    const-string v4, "Setel NV"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x149

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x16b

    const/4 v2, 0x1

    const-string v3, "SETAR"

    const-string v4, "SETAR (Servicio di Telecommunication diAruba"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x14a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x16b

    const/16 v2, 0x14

    const-string v3, "Digicell"

    const-string v4, "Digicell"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x14b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x16c

    const/16 v2, 0x186

    const-string v3, "BaTelCo"

    const-string v4, "The Bahamas Telecommunications Company Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x14c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x16d

    const/16 v2, 0xa

    const-string v3, "Weblinks Limited"

    const-string v4, "Weblinks Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x14d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x170

    const/4 v2, 0x1

    const-string v3, "ETECSA"

    const-string v4, "Empresa de Telecomunicaciones de Cuba, SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x14e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x172

    const/4 v2, 0x1

    const-string v3, "Orange"

    const-string v4, "Orange Dominicana"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x14f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x172

    const/4 v2, 0x2

    const-string v3, "Claro"

    const-string v4, "Compania Dominicana de Telefonos, C por"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x150

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x172

    const/4 v2, 0x4

    const-string v3, "ViVa"

    const-string v4, "Centennial Dominicana"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x151

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x174

    const/16 v2, 0xa

    const-string v3, "Comcel / Voila"

    const-string v4, "Comcel / Voila"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x152

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x174

    const/16 v2, 0x32

    const-string v3, "Digicel"

    const-string v4, "Digicel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x153

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x176

    const/16 v2, 0xc

    const-string v3, "bmobile"

    const-string v4, "TSTT"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x154

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x176

    const/16 v2, 0xd

    const-string v3, "Digicel"

    const-string v4, "Digicel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x155

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x190

    const/4 v2, 0x1

    const-string v3, "Azercell"

    const-string v4, "Azercell"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x156

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x190

    const/4 v2, 0x2

    const-string v3, "Bakcell"

    const-string v4, "Bakcell"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x157

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x190

    const/4 v2, 0x4

    const-string v3, "Nar Mobile"

    const-string v4, "Azerfon"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x158

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x191

    const/4 v2, 0x1

    const-string v3, "Beeline"

    const-string v4, "KaR-TeL LLP"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x159

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x191

    const/4 v2, 0x2

    const-string v3, "K\'Cell"

    const-string v4, "GSM Kazakhstan Ltdx."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x15a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x191

    const/16 v2, 0x4d

    const-string v3, "Mobile Telecom Service"

    const-string v4, "Mobile Telecom Service LLP"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x15b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x192

    const/16 v2, 0xb

    const-string v3, "B-Mobile"

    const-string v4, "B-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x15c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x192

    const/16 v2, 0x4d

    const-string v3, "TashiCell"

    const-string v4, "Tashi InfoComm Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x15d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/4 v2, 0x0

    const-string v3, "Reliance"

    const-string v4, "Reliance"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x15e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/4 v2, 0x1

    const-string v3, "Vodafone - Haryana"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x15f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/4 v2, 0x2

    const-string v3, "Airtel - Punjab"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x160

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/4 v2, 0x3

    const-string v3, "Airtel - Himachal Pradesh"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x161

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/4 v2, 0x4

    const-string v3, "Idea - Delhi"

    const-string v4, "Idea cellular Limited "

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x162

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/4 v2, 0x5

    const-string v3, "Vodafone - Gujarat"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x163

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/4 v2, 0x7

    const-string v3, "Idea - Andhra Pradesh"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x164

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x9

    const-string v3, "Reliance - Assam"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x165

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0xa

    const-string v3, "Airtel Delhi"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x166

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0xb

    const-string v3, "Vodafone - Delhi"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x167

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0xc

    const-string v3, "Idea - Haryana"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x168

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0xd

    const-string v3, "Vodafone - Andhra Pradesh"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x169

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0xe

    const-string v3, "Spice Telecom - Punjab"

    const-string v4, "Spice Communications Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x16a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0xf

    const-string v3, "Vodafone - Uttar Pradesh (East)"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x16b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x10

    const-string v3, "Airtel - North East"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x16c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x11

    const-string v3, "Aircel - West Bengal"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x16d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x12

    const-string v3, "Reliance - Himachal Pradesh"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x16e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x13

    const-string v3, "Idea - Kerala"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x16f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x14

    const-string v3, "Vodafone - Mumbai"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x170

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x15

    const-string v3, "BPL Mobile Mumbai"

    const-string v4, "BPL Mobile Mumbai"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x171

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x16

    const-string v3, "Idea - Maharashtra"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x172

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x18

    const-string v3, "Idea - Gujarat"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x173

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x19

    const-string v3, "Aircel - Bihar"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x174

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x1b

    const-string v3, "Vodafone - Maharashtra"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x175

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x1c

    const-string v3, "Aircel - Orissa"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x176

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x1d

    const-string v3, "Aircel - Assam"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x177

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x1e

    const-string v3, "Vodafone - Kolkata"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x178

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x1f

    const-string v3, "Airtel - Kolkata"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x179

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x21

    const-string v3, "Aircel - North East"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x17a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x22

    const-string v3, "BSNL - Haryana"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x17b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x23

    const-string v3, "Aircel - Himachal Pradesh"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x17c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x24

    const-string v3, "Reliance - Bihar"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x17d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x25

    const-string v3, "Aircel - Jammu & Kashmir"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x17e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x26

    const-string v3, "BSNL - Assam"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x17f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x28

    const-string v3, "Airtel - Chennai"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x180

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x29

    const-string v3, "Aircel - Chennai"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x181

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x2a

    const-string v3, "Aircel - Tamilnadu"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x182

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x2b

    const-string v3, "Vodafone - Tamilnadu"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x183

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x2c

    const-string v3, "Spice Telecom - Karnataka"

    const-string v4, "Spice Communications Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x184

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x2e

    const-string v3, "Vodafone - Kerala"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x185

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x31

    const-string v3, "Airtel - Andhra Pradesh"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x186

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x32

    const-string v3, "Reliance - North East"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x187

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x33

    const-string v3, "BSNL - Himachal Pradeshl"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x188

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x34

    const-string v3, "Reliance - Orissa"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x189

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x35

    const-string v3, "BSNL - Punjab"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x18a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x36

    const-string v3, "BSNL - Uttar Pradesh (West)"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x18b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x37

    const-string v3, "BSNL - Uttar Pradesh (East)"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x18c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x38

    const-string v3, "Idea - Uttar Pradesh West"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x18d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x39

    const-string v3, "BSNL - Gujarat"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x18e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x3a

    const-string v3, "BSNL - Madhya Pradesh"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x18f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x3b

    const-string v3, "BSNL - Rajasthan"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x190

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x3c

    const-string v3, "Vodafone - Rajasthan"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x191

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x3e

    const-string v3, "BSNL - Jammu & Kashmir"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x192

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x40

    const-string v3, "BSNL - Chennai"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x193

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x42

    const-string v3, "BSNL - Maharashtra"

    const-string v4, "Bharat Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x194

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x43

    const-string v3, "Vodafone - West Bengal"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x195

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x44

    const-string v3, "MTNL - Delhi"

    const-string v4, "Mahanagar Telephone Nigam Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x196

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x45

    const-string v3, "MTNL - Mumbai"

    const-string v4, "Mahanagar Telephone Nigam Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x197

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x46

    const-string v3, "Airtel - Rajasthan"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x198

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x47

    const-string v3, "BSNL - Karnataka"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x199

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x48

    const-string v3, "BSNL - Kerala"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x19a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x49

    const-string v3, "BSNL - Andhra Pradesh"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x19b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x4a

    const-string v3, "BSNL - West Bengal"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x19c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x4b

    const-string v3, "BSNL - Bihar"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x19d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x4c

    const-string v3, "BSNL - Orissa"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x19e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x4d

    const-string v3, "BSNL - North East"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x19f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x4e

    const-string v3, "Idea - Madhya Pradesh"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x4f

    const-string v3, "BSNL - Andaman Nicobar"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x50

    const-string v3, "BSNL - Tamilnadu"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x51

    const-string v3, "BSNL - Kolkata"

    const-string v4, "Bharti Sanchar Nigam Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x52

    const-string v3, "Idea - Himachal Pradesh"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x53

    const-string v3, "Reliance - Kolkata"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x54

    const-string v3, "Vodafone - Chennai"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x55

    const-string v3, "Reliance - West Bengal"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x56

    const-string v3, "Vodafone - Karnataka"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x57

    const-string v3, "Idea - Rajasthan"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1a9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x58

    const-string v3, "Vodafone - Punjab"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1aa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x59

    const-string v3, "Idea - Uttar Pradesh (East)"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ab

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x5a

    const-string v3, "Airtel - Maharashtra"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ac

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x5b

    const-string v3, "Airtel - Kolkata Metro Circle"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ad

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x5c

    const-string v3, "Airtel Mumbai"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ae

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x5d

    const-string v3, "Airtel Madhya Pradesh"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1af

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x5e

    const-string v3, "Airtel Tamilnadu"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x5f

    const-string v3, "Airtel - Kerala"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x60

    const-string v3, "Airtel - Haryana"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x194

    const/16 v2, 0x61

    const-string v3, "Airtel - Uttar Pradesh (West)"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/4 v2, 0x1

    const-string v3, "Reliance - Andhra Pradesh"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/4 v2, 0x3

    const-string v3, "Reliance - Bihar"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/4 v2, 0x4

    const-string v3, "Reliance - Chennai"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/4 v2, 0x5

    const-string v3, "Reliance - Delhi"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/4 v2, 0x6

    const-string v3, "Reliance - Gujarat"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/4 v2, 0x7

    const-string v3, "Reliance - Haryana"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1b9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x8

    const-string v3, "Reliance - Himachal Pradesh"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ba

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x9

    const-string v3, "Reliance - Jammu & Kashmir"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1bb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0xa

    const-string v3, "Reliance - Karnataka"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1bc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0xb

    const-string v3, "Reliance - Kerala"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1bd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0xc

    const-string v3, "Reliance - Kolkata"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1be

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0xd

    const-string v3, "Reliance - Maharashtra"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1bf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0xe

    const-string v3, "Reliance - Madhya Pradesh"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0xf

    const-string v3, "Reliance - Mumbai"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x11

    const-string v3, "Reliance - Orissa"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x12

    const-string v3, "Reliance - Punjab"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x13

    const-string v3, "Reliance - Rajasthan"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x14

    const-string v3, "Reliance - Tamilnadu"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x15

    const-string v3, "Reliance - Uttar Pradesh (East)"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x16

    const-string v3, "Reliance - Uttar Pradesh (West)"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x17

    const-string v3, "Reliance - West Bengal"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x17

    const-string v3, "Reliance - West Bengal"

    const-string v4, "Reliance Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1c9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x19

    const-string v3, "Tata - Andhra Pradesh"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ca

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x1a

    const-string v3, "Tata - Assam"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1cb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x1b

    const-string v3, "Tata - Bihar"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1cc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x1c

    const-string v3, "Tata - Chennai"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1cd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x1d

    const-string v3, "Tata - Delhi"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ce

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x1e

    const-string v3, "Tata - Gujarat"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1cf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x1f

    const-string v3, "Tata - Haryana"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x20

    const-string v3, "Tata - Himachal Pradesh"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x21

    const-string v3, "Tata - Jammu & Kashmir"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x22

    const-string v3, "Tata - Karnataka"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x23

    const-string v3, "Tata - Kerala"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x24

    const-string v3, "Tata - Kolkata"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x25

    const-string v3, "Tata - Maharashtra"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x26

    const-string v3, "Tata - Madhya Pradesh"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x27

    const-string v3, "Tata - Mumbai"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x28

    const-string v3, "Tata - North East"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1d9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x29

    const-string v3, "Tata - Orissa"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1da

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2a

    const-string v3, "Tata - Punjab"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1db

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2b

    const-string v3, "Tata - Rajasthan"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1dc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2c

    const-string v3, "Tata - Tamilnadu"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1dd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2d

    const-string v3, "Tata - Uttar Pradesh (East)"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1de

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2e

    const-string v3, "Tata - Uttar Pradesh (West)"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1df

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2f

    const-string v3, "Tata - West Bengal"

    const-string v4, "Tata Teleservices"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x33

    const-string v3, "Airtel - West Bengal"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x34

    const-string v3, "Airtel - Bihar"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x35

    const-string v3, "Airtel - Orissa"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x36

    const-string v3, "Airtel - Uttar Pradesh (East)"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x37

    const-string v3, "Airtel - Jammu & Kashmir"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x38

    const-string v3, "Airtel - Assam"

    const-string v4, "Bharti Airtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x42

    const-string v3, "Vodafone - Uttar Pradesh (West)"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x43

    const-string v3, "Vodafone - West Bengal"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x46

    const-string v3, "Idea - Bihar"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1e9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2ee

    const-string v3, "Vodafone - Jammu & Kashmir"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ea

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2ef

    const-string v3, "Vodafone - Assam"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1eb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2f0

    const-string v3, "Vodafone - Bihar"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ec

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2f1

    const-string v3, "Vodafone - Orissa"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ed

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2f2

    const-string v3, "Vodafone - Himachal Pradesh"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ee

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2f3

    const-string v3, "Vodafone - North East"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ef

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x2f4

    const-string v3, "Vodafone - Madhya Pradesh"

    const-string v4, "Vodafone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x31f

    const-string v3, "Idea - Mumbai"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x320

    const-string v3, "Aircel - Delhi"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x321

    const-string v3, "Aircel - Andhra Pradesh"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x322

    const-string v3, "Aircel - Gujarat"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x323

    const-string v3, "Aircel - Karnataka"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x324

    const-string v3, "Aircel - Maharashtra"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x325

    const-string v3, "Aircel - Mumbai"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x326

    const-string v3, "Aircel - Rajasthan"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x327

    const-string v3, "Aircel - Haryana"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1f9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x328

    const-string v3, "Aircel - Punjab"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1fa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x329

    const-string v3, "Aircel - Kerala"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1fb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x32a

    const-string v3, "Aircel - Uttar Pradesh (East)"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1fc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x32b

    const-string v3, "Aircel - Uttar Pradesh (West)"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1fd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x32c

    const-string v3, "Aircel - Madhya Pradesh"

    const-string v4, "Dishnet Wireless/Aircel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1fe

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x32d

    const-string v3, "Unitech - Haryana"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x1ff

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x32e

    const-string v3, "Unitech - Himachal Pradesh"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x200

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x32f

    const-string v3, "Unitech - Jammu & Kashmir"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x201

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x330

    const-string v3, "Unitech - Punjab"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x202

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x331

    const-string v3, "Unitech - Rajasthan"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x203

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x332

    const-string v3, "Unitech - Uttar Pradesh (West)"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x204

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x333

    const-string v3, "Unitech - Andhra Pradesh"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x205

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x334

    const-string v3, "Unitech - Karnataka"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x206

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x335

    const-string v3, "Unitech - Kerala"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x207

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x336

    const-string v3, "Unitech - Kolkata"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x208

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x34c

    const-string v3, "Unitech - Delhi"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x209

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x34d

    const-string v3, "Idea - Assam"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x20a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x34e

    const-string v3, "Idea - Jammu & Kashmir"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x20b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x34f

    const-string v3, "Idea - Karnataka"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x20c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x350

    const-string v3, "Idea - Kolkata"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x20d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x351

    const-string v3, "Idea - North East"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x20e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x352

    const-string v3, "Idea - Orissa"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x20f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x353

    const-string v3, "Idea - Punjab"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x210

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x354

    const-string v3, "Idea - Tamilnadu"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x211

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x355

    const-string v3, "Idea - West Bengal"

    const-string v4, "Idea Cellular Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x212

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x356

    const-string v3, "Loop - Andhra Pradesh"

    const-string v4, "Loop Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x213

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x36b

    const-string v3, "Unitech - Assam"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x214

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x36c

    const-string v3, "Unitech - Bihar"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x215

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x36d

    const-string v3, "Unitech - North East"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x216

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x36e

    const-string v3, "Unitech - Orissa"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x217

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x36f

    const-string v3, "Unitech - Uttar Pradesh (East)"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x218

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x370

    const-string v3, "Unitech - West Bengal"

    const-string v4, "Unitech Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x219

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x377

    const-string v3, "Shyam - Andhra Pradesh"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x21a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x378

    const-string v3, "Shyam - Assam"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x21b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x379

    const-string v3, "Shyam - Bihar"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x21c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x37a

    const-string v3, "Shyam - Delhi"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x21d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x37b

    const-string v3, "Shyam - Gujarat"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x21e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x37c

    const-string v3, "Shyam - Haryana"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x21f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x37d

    const-string v3, "Shyam - Himachal Pradesh"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x220

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x37e

    const-string v3, "Shyam - Jammu & Kashmir"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x221

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x37f

    const-string v3, "Shyam - Karnataka"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x222

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x380

    const-string v3, "Shyam - Kerala"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x223

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x381

    const-string v3, "Shyam - Kolkata"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x224

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x382

    const-string v3, "Shyam - Maharashtra"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x225

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x383

    const-string v3, "Shyam - Madhya Pradesh"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x226

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x384

    const-string v3, "Shyam - Mumbai"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x227

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x385

    const-string v3, "Shyam - North East"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x228

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x386

    const-string v3, "Shyam - Orissa"

    const-string v4, "Sistema Shyam"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x229

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x195

    const/16 v2, 0x390

    const-string v3, "Etisalat  - Andhra Pradesh"

    const-string v4, "Etisalat DB"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x22a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19a

    const/4 v2, 0x1

    const-string v3, "Mobilink"

    const-string v4, "Mobilink-PMCL"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x22b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19a

    const/4 v2, 0x3

    const-string v3, "Ufone"

    const-string v4, "Pakistan Telecommunication Mobile Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x22c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19a

    const/4 v2, 0x4

    const-string v3, "Zong"

    const-string v4, "China Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x22d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19a

    const/4 v2, 0x6

    const-string v3, "Telenor"

    const-string v4, "Telenor Pakistan"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x22e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19a

    const/4 v2, 0x7

    const-string v3, "Warid"

    const-string v4, "WaridTel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x22f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19c

    const/4 v2, 0x1

    const-string v3, "AWCC"

    const-string v4, "Afghan wireless Communication Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x230

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19c

    const/16 v2, 0x14

    const-string v3, "Roshan"

    const-string v4, "Telecom Development Company Afghanistan Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x231

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19c

    const/16 v2, 0x28

    const-string v3, "Areeba"

    const-string v4, "MTN Afghanistan"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x232

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19c

    const/16 v2, 0x32

    const-string v3, "Etisalat"

    const-string v4, "Etisalat Afghanistan"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x233

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19d

    const/4 v2, 0x1

    const-string v3, "Mobitel"

    const-string v4, "Mobitel Lanka Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x234

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19d

    const/4 v2, 0x2

    const-string v3, "Dialog"

    const-string v4, "Dialog Telekom PLC."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x235

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19d

    const/4 v2, 0x3

    const-string v3, "Tigo"

    const-string v4, "Celtel Lanka Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x236

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19d

    const/16 v2, 0x8

    const-string v3, "Hutch Sri Lanka"

    const-string v4, "Hutch Sri Lanka"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x237

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19e

    const/4 v2, 0x1

    const-string v3, "MPT"

    const-string v4, "Myanmar Post and Telecommunication"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x238

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19f

    const/4 v2, 0x1

    const-string v3, "Alfa"

    const-string v4, "Alfa"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x239

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x19f

    const/4 v2, 0x3

    const-string v3, "MTC-Touch"

    const-string v4, "MIC 2"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x23a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a0

    const/4 v2, 0x1

    const-string v3, "Zain"

    const-string v4, "Jordan Mobile Teelphone Services"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x23b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a0

    const/4 v2, 0x3

    const-string v3, "Umniah"

    const-string v4, "Umniah"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x23c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a0

    const/16 v2, 0x4d

    const-string v3, "Orange"

    const-string v4, "Oetra Jordanian Mobile Telecommunications Company (MobileCom)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x23d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a1

    const/4 v2, 0x1

    const-string v3, "SyriaTel"

    const-string v4, "SyriaTel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x23e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a1

    const/4 v2, 0x2

    const-string v3, "MTN Syria"

    const-string v4, "MTN Syria (JSC)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x23f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a2

    const/16 v2, 0x14

    const-string v3, "Zain Iraq"

    const-string v4, "Zain Iraq"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x240

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a2

    const/16 v2, 0x1e

    const-string v3, "Zain Iraq"

    const-string v4, "Zain Iraq"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x241

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a2

    const/16 v2, 0x32

    const-string v3, "Asia Cell"

    const-string v4, "Asia Cell Telecommunications Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x242

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a2

    const/16 v2, 0x28

    const-string v3, "Korek"

    const-string v4, "Korel Telecom Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x243

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a3

    const/4 v2, 0x2

    const-string v3, "Zain"

    const-string v4, "Mobile Telecommunications Co."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x244

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a3

    const/4 v2, 0x3

    const-string v3, "Wataniya"

    const-string v4, "National Mobile Telecommunications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x245

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a3

    const/4 v2, 0x4

    const-string v3, "Viva"

    const-string v4, "Kuwait Telecommunication Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x246

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a4

    const/4 v2, 0x1

    const-string v3, "STC"

    const-string v4, "Saudi Telecom Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x247

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a4

    const/4 v2, 0x3

    const-string v3, "Mobily"

    const-string v4, "Etihad Etisalat Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x248

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a4

    const/4 v2, 0x4

    const-string v3, "Zain SA"

    const-string v4, "MTC Saudi Arabia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x249

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a5

    const/4 v2, 0x1

    const-string v3, "SabaFon"

    const-string v4, "SabaFon"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x24a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a5

    const/4 v2, 0x2

    const-string v3, "MTN"

    const-string v4, "Spacetel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x24b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a6

    const/4 v2, 0x2

    const-string v3, "Oman Mobile"

    const-string v4, "Oman Telecommunications Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x24c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a6

    const/4 v2, 0x3

    const-string v3, "Nawras"

    const-string v4, "Omani Qatari Telecommunications Company SAOC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x24d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a8

    const/4 v2, 0x2

    const-string v3, "Etisalat"

    const-string v4, "Emirates Telecom Corp"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x24e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a8

    const/4 v2, 0x3

    const-string v3, "du"

    const-string v4, "Emirates Integrated Telecommunications Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x24f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a9

    const/4 v2, 0x1

    const-string v3, "Orange"

    const-string v4, "Partner Communications Company Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x250

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a9

    const/4 v2, 0x2

    const-string v3, "Cellcom"

    const-string v4, "Cellcom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x251

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a9

    const/4 v2, 0x3

    const-string v3, "Pelephone"

    const-string v4, "Pelephone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x252

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1a9

    const/4 v2, 0x5

    const-string v3, "JAWWAL"

    const-string v4, "Palestine Cellular Communications, Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x253

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1ab

    const/4 v2, 0x1

    const-string v3, "Qatarnet"

    const-string v4, "Q-Tel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x254

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1ac

    const/16 v2, 0x58

    const-string v3, "Unitel"

    const-string v4, "Unitel LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x255

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1ac

    const/16 v2, 0x63

    const-string v3, "MobiCom"

    const-string v4, "MobiCom Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x256

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1ad

    const/4 v2, 0x1

    const-string v3, "Nepal Telecom"

    const-string v4, "Nepal Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x257

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1ad

    const/4 v2, 0x2

    const-string v3, "Mero Mobile"

    const-string v4, "Spice Nepal Private Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x258

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b0

    const/16 v2, 0xb

    const-string v3, "MCI"

    const-string v4, "Mobile Communications Company of Iran"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x259

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b0

    const/16 v2, 0xe

    const-string v3, "TKC"

    const-string v4, "KFZO"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x25a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b0

    const/16 v2, 0x13

    const-string v3, "MTCE"

    const-string v4, "Mobile Telecommunications Company of Esfahan"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x25b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b0

    const/16 v2, 0x20

    const-string v3, "Taliya"

    const-string v4, "Taliya"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x25c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b0

    const/16 v2, 0x23

    const-string v3, "Irancell"

    const-string v4, "Irancell Telecommunications Services Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x25d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b2

    const/4 v2, 0x4

    const-string v3, "Beeline"

    const-string v4, "Unitel LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x25e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b2

    const/4 v2, 0x5

    const-string v3, "Ucell"

    const-string v4, "Coscom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x25f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b2

    const/4 v2, 0x7

    const-string v3, "MTS"

    const-string v4, "Mobile teleSystems (FE \'Uzdunrobita\' Ltd)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x260

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b4

    const/4 v2, 0x1

    const-string v3, "Somoncom"

    const-string v4, "JV Somoncom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x261

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b4

    const/4 v2, 0x2

    const-string v3, "Indigo"

    const-string v4, "Indigo Tajikistan"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x262

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b4

    const/4 v2, 0x3

    const-string v3, "MLT"

    const-string v4, "TT Mobile, Closed joint-stock company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x263

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b4

    const/4 v2, 0x4

    const-string v3, "Babilon-M"

    const-string v4, "CJSC Babilon-Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x264

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b4

    const/4 v2, 0x5

    const-string v3, "Beeline TJ"

    const-string v4, "Co Ltd. Tacom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x265

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b5

    const/4 v2, 0x1

    const-string v3, "Bitel"

    const-string v4, "Sky Mobile LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x266

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b5

    const/4 v2, 0x5

    const-string v3, "MegaCom"

    const-string v4, "BiMoCom Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x267

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b5

    const/16 v2, 0x9

    const-string v3, "O!"

    const-string v4, "NurTelecom LLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x268

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b6

    const/4 v2, 0x1

    const-string v3, "MTS"

    const-string v4, "Barash Communication Technologies"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x269

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b6

    const/4 v2, 0x2

    const-string v3, "TM-Cell"

    const-string v4, "TM-Cell"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x26a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/4 v2, 0x0

    const-string v3, "eMobile"

    const-string v4, "eMobile, Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x26b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/4 v2, 0x1

    const-string v3, "DoCoMo"

    const-string v4, "NTT DoCoMo"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x26c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/4 v2, 0x2

    const-string v3, "DoCoMo"

    const-string v4, "NTT DoCoMo Kansai"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x26d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/4 v2, 0x3

    const-string v3, "DoCoMo"

    const-string v4, "NTT DoCoMo Hokuriku"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x26e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/4 v2, 0x4

    const-string v3, "SoftBank"

    const-string v4, "SoftBank Mobile Corp"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x26f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/4 v2, 0x6

    const-string v3, "SoftBank"

    const-string v4, "SoftBank Mobile Corp"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x270

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/4 v2, 0x7

    const-string v3, "KDDI"

    const-string v4, "KDDI"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x271

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/16 v2, 0xa

    const-string v3, "DoCoMo"

    const-string v4, "NTT DoCoMo Kansai"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x272

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1b8

    const/16 v2, 0x14

    const-string v3, "SoftBank"

    const-string v4, "SoftBank Mobile Corp"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x273

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c2

    const/4 v2, 0x5

    const-string v3, "SK"

    const-string v4, "SK Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x274

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c2

    const/16 v2, 0x8

    const-string v3, "KTF SHOW"

    const-string v4, "KTF"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x275

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c4

    const/4 v2, 0x1

    const-string v3, "MobiFone"

    const-string v4, "Vietnam Mobile Telecom Services Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x276

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c4

    const/4 v2, 0x2

    const-string v3, "Vinaphone"

    const-string v4, "Vietnam Telecoms Services Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x277

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c4

    const/4 v2, 0x4

    const-string v3, "Viettel Mobile"

    const-string v4, "iViettel Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x278

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x0

    const-string v3, "CSL"

    const-string v4, "Hong Kong CSL Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x279

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x1

    const-string v3, "CITIC Telecom 1616"

    const-string v4, "CITIC Telecom 1616"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x27a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x2

    const-string v3, "CSL 3G"

    const-string v4, "Hong Kong CSL Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x27b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x3

    const-string v3, "3(3G)"

    const-string v4, "3(3G)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x27c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x4

    const-string v3, "3(2G)"

    const-string v4, "3(2G)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x27d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x5

    const-string v3, "3 HK"

    const-string v4, "3 HK"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x27e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x6

    const-string v3, "SmarTone"

    const-string v4, "SmarTone Mobile Comms"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x27f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/4 v2, 0x7

    const-string v3, "China Unicom"

    const-string v4, "China Unicom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x280

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0x8

    const-string v3, "Trident"

    const-string v4, "Trident"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x281

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0x9

    const-string v3, "China Motion Telecom"

    const-string v4, "China Motion Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x282

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0xa

    const-string v3, "New World"

    const-string v4, "Hong Kong CSL Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x283

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0xb

    const-string v3, "Chia-HongKong Telecom"

    const-string v4, "Chia-HongKong Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x284

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0xc

    const-string v3, "CMCC"

    const-string v4, "China Mobile Hong Kong Company Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x285

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0xd

    const-string v3, "CMCC"

    const-string v4, "China Mobile Hong Kong Company Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x286

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0xe

    const-string v3, "Hutchison Telecom"

    const-string v4, "Hutchison Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x287

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0xf

    const-string v3, "SmarTone-Vodafone"

    const-string v4, "SmarTone Mobile Comms"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x288

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0x10

    const-string v3, "PCCW"

    const-string v4, "PCCW Mobile (PCCW Ltd)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x289

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0x11

    const-string v3, "SmarTone-Vodafone"

    const-string v4, "SmarTone Mobile Comms"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x28a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0x12

    const-string v3, "Hong Kong CSL Limited"

    const-string v4, "Hong Kong CSL Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x28b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0x13

    const-string v3, "PCCW"

    const-string v4, "PCCW Mobile (PCCW Ltd)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x28c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c6

    const/16 v2, 0x1d

    const-string v3, "PCCW"

    const-string v4, "PCCW Mobile (PCCW Ltd)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x28d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c7

    const/4 v2, 0x0

    const-string v3, "SmarTone MO"

    const-string v4, "SmarTone Macau"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x28e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c7

    const/4 v2, 0x1

    const-string v3, "CTM"

    const-string v4, "C.T.M. Telemovel+"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x28f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c7

    const/4 v2, 0x2

    const-string v3, "CT_MACAO"

    const-string v4, "CT_MACAO"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x290

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c7

    const/4 v2, 0x3

    const-string v3, "3"

    const-string v4, "Hutchison Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x291

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c7

    const/4 v2, 0x4

    const-string v3, "CTM"

    const-string v4, "C.T.M. Telemovel+"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x292

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c7

    const/4 v2, 0x5

    const-string v3, "3"

    const-string v4, "Hutchison Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x293

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c8

    const/4 v2, 0x1

    const-string v3, "Mobitel"

    const-string v4, "CamGSM"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x294

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c8

    const/4 v2, 0x2

    const-string v3, "hello"

    const-string v4, "Telekom Malaysia International (Cambodia) Co. Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x295

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c8

    const/4 v2, 0x4

    const-string/jumbo v3, "qb"

    const-string v4, "Cambodia Advance Communications Co. Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x296

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c8

    const/4 v2, 0x5

    const-string v3, "Star-Cell"

    const-string v4, "APPLIFONE CO. LTD."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x297

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c8

    const/16 v2, 0x12

    const-string v3, "Shinawatra"

    const-string v4, "Shinawatra"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x298

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c9

    const/4 v2, 0x1

    const-string v3, "LaoTel"

    const-string v4, "Lao Shinawatra Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x299

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c9

    const/4 v2, 0x2

    const-string v3, "ETL"

    const-string v4, "Enterprise of Telecommunications Lao"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x29a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c9

    const/4 v2, 0x3

    const-string v3, "LAT"

    const-string v4, "Lao Asia Telecommunication State Enterprise (LAT)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x29b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1c9

    const/16 v2, 0x8

    const-string v3, "Tigo"

    const-string v4, "Millicom Lao Co Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x29c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1cc

    const/4 v2, 0x0

    const-string v3, "China Mobile"

    const-string v4, "China Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x29d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1cc

    const/4 v2, 0x2

    const-string v3, "China Mobile"

    const-string v4, "China Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x29e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1cc

    const/4 v2, 0x7

    const-string v3, "China Mobile"

    const-string v4, "China Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x29f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1cc

    const/4 v2, 0x1

    const-string v3, "China Unicom"

    const-string v4, "China Unicom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1cc

    const/4 v2, 0x6

    const-string v3, "China Unicom"

    const-string v4, "China Unicom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1cc

    const/4 v2, 0x3

    const-string v3, "China Telecom"

    const-string v4, "China Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1cc

    const/4 v2, 0x5

    const-string v3, "China Telecom"

    const-string v4, "China Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/4 v2, 0x1

    const-string v3, "FarEasTone"

    const-string v4, "Far EasTone Telecommunications Co Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/4 v2, 0x5

    const-string v3, "APBW"

    const-string v4, "APBW"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/4 v2, 0x6

    const-string v3, "Tuntex"

    const-string v4, "Tuntex Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/16 v2, 0x58

    const-string v3, "KG Telecom"

    const-string v4, "KG Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/16 v2, 0x59

    const-string v3, "VIBO"

    const-string v4, "VIBO Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/16 v2, 0x5c

    const-string v3, "Chungwa"

    const-string v4, "Chungwa"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2a9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/16 v2, 0x5d

    const-string v3, "MobiTai"

    const-string v4, "iMobitai Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2aa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/16 v2, 0x61

    const-string v3, "Taiwan Mobile"

    const-string v4, "Taiwan Mobile Co. Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ab

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d2

    const/16 v2, 0x63

    const-string v3, "TransAsia"

    const-string v4, "TransAsia Telecoms"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ac

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d3

    const/16 v2, 0xc1

    const-string v3, "SUN NET"

    const-string v4, "Korea Posts and Telecommunications Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ad

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d6

    const/4 v2, 0x1

    const-string v3, "Grameenphone"

    const-string v4, "GrameenPhone Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ae

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d6

    const/4 v2, 0x2

    const-string v3, "Aktel"

    const-string v4, "Aktel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2af

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d6

    const/4 v2, 0x3

    const-string v3, "Banglalink"

    const-string v4, "Orascom telecom Bangladesh Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d6

    const/4 v2, 0x4

    const-string v3, "TeleTalk"

    const-string v4, "TeleTalk"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d6

    const/4 v2, 0x6

    const-string v3, "Citycell"

    const-string v4, "Citycell"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d6

    const/4 v2, 0x7

    const-string v3, "Warid"

    const-string v4, "Warid Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d8

    const/4 v2, 0x1

    const-string v3, "Dhiraagu"

    const-string v4, "Dhivehi Raajjeyge Gulhun"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1d8

    const/4 v2, 0x2

    const-string v3, "Wataniya"

    const-string v4, "Wataniya Telecom Maldives"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f6

    const/16 v2, 0xc

    const-string v3, "Maxis"

    const-string v4, "Maxis Communications Berhad"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f6

    const/16 v2, 0xd

    const-string v3, "Celcom"

    const-string v4, "Celcom Malaysia Sdn Bhd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f6

    const/16 v2, 0x10

    const-string v3, "DiGi"

    const-string v4, "DiGi Telecommunications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f6

    const/16 v2, 0x12

    const-string v3, "U Mobile"

    const-string v4, "U Mobile Sdn Bhd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2b9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f6

    const/16 v2, 0x13

    const-string v3, "Celcom"

    const-string v4, "Celcom Malaysia Sdn Bhd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ba

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f9

    const/4 v2, 0x1

    const-string v3, "Telstra"

    const-string v4, "Telstra Corp. Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2bb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f9

    const/4 v2, 0x2

    const-string v3, "YES OPTUS"

    const-string v4, "Singtel Optus Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2bc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f9

    const/4 v2, 0x3

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Australia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2bd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f9

    const/4 v2, 0x6

    const-string v3, "3"

    const-string v4, "Hutchison 3G"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2be

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1f9

    const/16 v2, 0x5a

    const-string v3, "YES OPTUS"

    const-string v4, "Singtel Optus Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2bf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1fe

    const/4 v2, 0x0

    const-string v3, "PSN"

    const-string v4, "PT Pasifik Satelit Nusantara (ACeS)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1fe

    const/4 v2, 0x1

    const-string v3, "INDOSAT"

    const-string v4, "PT Indonesian Satellite Corporation Tbk (INDOSAT)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1fe

    const/16 v2, 0x8

    const-string v3, "AXIS"

    const-string v4, "PT Natrindo Telepon Seluler"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1fe

    const/16 v2, 0xa

    const-string v3, "Telkomsel"

    const-string v4, "PT Telkomunikasi Selular"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1fe

    const/16 v2, 0xb

    const-string v3, "XL"

    const-string v4, "PT Excelcomindo Pratama"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x1fe

    const/16 v2, 0x59

    const-string v3, "3"

    const-string v4, "PT Hutchison CP Telecommunications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x202

    const/4 v2, 0x2

    const-string v3, "Timor Telecom"

    const-string v4, "Timor Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x203

    const/4 v2, 0x1

    const-string v3, "Islacom"

    const-string v4, "Innove Communicatiobs Inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x203

    const/4 v2, 0x2

    const-string v3, "Globe"

    const-string v4, "Globe Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x203

    const/4 v2, 0x3

    const-string v3, "Smart Gold"

    const-string v4, "Smart Communications Inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2c9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x203

    const/4 v2, 0x5

    const-string v3, "Digitel"

    const-string v4, "Digital Telecommunications Philppines"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ca

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x203

    const/16 v2, 0x12

    const-string v3, "Red Mobile"

    const-string v4, "Connectivity Unlimited resource Enterprise"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2cb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x208

    const/4 v2, 0x1

    const-string v3, "Advanced Info Service"

    const-string v4, "Advanced Info Service"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2cc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x208

    const/16 v2, 0xf

    const-string v3, "ACT Mobile"

    const-string v4, "ACT Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2cd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x208

    const/16 v2, 0x12

    const-string v3, "DTAC"

    const-string v4, "Total Access Communication"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ce

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x208

    const/16 v2, 0x17

    const-string v3, "Advanced Info Service"

    const-string v4, "Advanced Info Service"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2cf

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x208

    const/16 v2, 0x63

    const-string v3, "True Move"

    const-string v4, "True Move"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x20d

    const/4 v2, 0x1

    const-string v3, "SingTel"

    const-string v4, "Singapore Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x20d

    const/4 v2, 0x2

    const-string v3, "SingTel-G18"

    const-string v4, "Singapore Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x20d

    const/4 v2, 0x3

    const-string v3, "M1"

    const-string v4, "MobileOne Asia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x20d

    const/4 v2, 0x5

    const-string v3, "StarHub"

    const-string v4, "StarHub Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x210

    const/4 v2, 0x2

    const-string v3, "B-Mobile"

    const-string v4, "B-Mobile Communications Sdn Bhd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x210

    const/16 v2, 0xb

    const-string v3, "DTSCom"

    const-string v4, "DataStream Technology"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x212

    const/4 v2, 0x1

    const-string v3, "Vodafone"

    const-string v4, "Vodafone New Zealand"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x212

    const/4 v2, 0x3

    const-string v3, "Woosh"

    const-string v4, "Woosh wireless New Zealand"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x212

    const/4 v2, 0x5

    const-string v3, "Telecom"

    const-string v4, "Telecom New Zealand"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2d9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x212

    const/16 v2, 0x18

    const-string v3, "NZ Comms"

    const-string v4, "NZ Communications New Zealand"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2da

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x219

    const/4 v2, 0x1

    const-string v3, "B-Mobile"

    const-string v4, "Pacific Mobile Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2db

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x21c

    const/4 v2, 0x1

    const-string v3, "BREEZE"

    const-string v4, "Solomon Telekom Co Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2dc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x21d

    const/4 v2, 0x1

    const-string v3, "SMILE"

    const-string/jumbo v4, "telecom Vanuatu Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2dd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x21e

    const/4 v2, 0x1

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Fiji"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2de

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x221

    const/16 v2, 0x9

    const-string v3, "Kiribati Frigate"

    const-string v4, "Telecom services Kiribati Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2df

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x222

    const/4 v2, 0x1

    const-string v3, "Mobilis"

    const-string v4, "OPT New Caledonia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x223

    const/16 v2, 0x14

    const-string v3, "VINI"

    const-string v4, "Tikiphone SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x224

    const/4 v2, 0x1

    const-string v3, "Telecom Cook"

    const-string v4, "Telecom Cook"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x225

    const/4 v2, 0x1

    const-string v3, "Digicel"

    const-string v4, "Digicel Pacific Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x225

    const/16 v2, 0x1b

    const-string v3, "SamoaTel"

    const-string v4, "SamoaTel Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x226

    const/4 v2, 0x1

    const-string v3, "FSM Telecom"

    const-string v4, "FSM Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x228

    const/4 v2, 0x1

    const-string v3, "PNCC"

    const-string v4, "Palau National Communications Corp."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x228

    const/16 v2, 0x50

    const-string v3, "Palau Mobile"

    const-string v4, "Palau Mobile Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25a

    const/4 v2, 0x1

    const-string v3, "Mobinil"

    const-string v4, "ECMS-Mobinil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25a

    const/4 v2, 0x2

    const-string v3, "Vodafone"

    const-string v4, "Vodafone Egypt"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2e9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25a

    const/4 v2, 0x3

    const-string v3, "etisalat"

    const-string v4, "Etisalat Egypt"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ea

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25b

    const/4 v2, 0x1

    const-string v3, "Mobilis"

    const-string v4, "ATM Mobilis"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2eb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25b

    const/4 v2, 0x2

    const-string v3, "Djezzy"

    const-string v4, "Orascom Telecom Algerie Spa"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ec

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25b

    const/4 v2, 0x3

    const-string v3, "Nedjma"

    const-string v4, "Wataniya Telecom Algerie"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ed

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25c

    const/4 v2, 0x0

    const-string v3, "Meditel"

    const-string v4, "Medi Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ee

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25c

    const/4 v2, 0x1

    const-string v3, "IAM"

    const-string v4, "Ittissalat Al Maghrib (Maroc Telecom)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ef

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25d

    const/4 v2, 0x2

    const-string v3, "Tunicell"

    const-string v4, "Tunisie Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25d

    const/4 v2, 0x3

    const-string v3, "Tunisiana"

    const-string v4, "Orascom Telecom Tunisie"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25e

    const/4 v2, 0x0

    const-string v3, "Libyana"

    const-string v4, "Libyana"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x25e

    const/4 v2, 0x1

    const-string v3, "Madar"

    const-string v4, "Al Madar"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x261

    const/4 v2, 0x1

    const-string v3, "Mattel"

    const-string v4, "Mattel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x261

    const/16 v2, 0xa

    const-string v3, "Mauritel"

    const-string v4, "Mauritel Mobiles"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x262

    const/4 v2, 0x1

    const-string v3, "Malitel"

    const-string v4, "Malitel SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x262

    const/4 v2, 0x2

    const-string v3, "Orange"

    const-string v4, "Orange Mali SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x263

    const/4 v2, 0x2

    const-string v3, "Lagui"

    const-string v4, "Sotelgui Lagui"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x263

    const/4 v2, 0x3

    const-string v3, "Telecel Guinee"

    const-string v4, "INTERCEL Guinee"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2f9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x263

    const/4 v2, 0x4

    const-string v3, "MTN"

    const-string v4, "Areeba Guinea"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2fa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x264

    const/4 v2, 0x2

    const-string v3, "Moov"

    const-string v4, "Moov"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2fb

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x264

    const/4 v2, 0x3

    const-string v3, "Orange"

    const-string v4, "Orange"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2fc

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x264

    const/4 v2, 0x4

    const-string v3, "KoZ"

    const-string v4, "Comium Ivory Coast Inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2fd

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x264

    const/4 v2, 0x5

    const-string v3, "MTN"

    const-string v4, "MTN"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2fe

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x264

    const/4 v2, 0x6

    const-string v3, "ORICEL"

    const-string v4, "ORICEL"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x2ff

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x265

    const/4 v2, 0x1

    const-string v3, "Onatel"

    const-string v4, "Onatel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x300

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x265

    const/4 v2, 0x2

    const-string v3, "Zain"

    const-string v4, "Celtel Burkina Faso"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x301

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x265

    const/4 v2, 0x3

    const-string v3, "Telecel Faso"

    const-string v4, "Telecel Faso SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x302

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x266

    const/4 v2, 0x1

    const-string v3, "SahelCom"

    const-string v4, "SahelCom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x303

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x266

    const/4 v2, 0x2

    const-string v3, "Zain"

    const-string v4, "Celtel Niger"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x304

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x266

    const/4 v2, 0x3

    const-string v3, "Telecel"

    const-string v4, "Telecel Niger SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x305

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x266

    const/4 v2, 0x4

    const-string v3, "Orange"

    const-string v4, "Orange Niger"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x306

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x267

    const/4 v2, 0x1

    const-string v3, "Togo Cell"

    const-string v4, "Togo Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x307

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x267

    const/4 v2, 0x5

    const-string v3, "Telecel"

    const-string v4, "Telecel Togo"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x308

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x268

    const/4 v2, 0x0

    const-string v3, "BBCOM"

    const-string v4, "Bell Benin Communications"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x309

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x268

    const/4 v2, 0x2

    const-string v3, "Telecel"

    const-string v4, "Telecel Benin Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x30a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x268

    const/4 v2, 0x3

    const-string v3, "Areeba"

    const-string v4, "Spacetel Benin"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x30b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x269

    const/4 v2, 0x1

    const-string v3, "Orange"

    const-string v4, "Cellplus Mobile Communications Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x30c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x269

    const/16 v2, 0xa

    const-string v3, "Emtel"

    const-string v4, "Emtel Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x30d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26a

    const/4 v2, 0x1

    const-string v3, "LoneStar Cell"

    const-string v4, "Lonestar Communications Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x30e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26c

    const/4 v2, 0x1

    const-string v3, "MTN"

    const-string v4, "ScanCom Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x30f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26c

    const/4 v2, 0x2

    const-string v3, "Ghana Telecomi Mobile"

    const-string v4, "Ghana Telecommunications Company Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x310

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26c

    const/4 v2, 0x3

    const-string/jumbo v3, "tiGO"

    const-string v4, "Millicom Ghana Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x311

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26d

    const/16 v2, 0x14

    const-string v3, "Zain"

    const-string v4, "Celtel Nigeria Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x312

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26d

    const/16 v2, 0x1e

    const-string v3, "MTN"

    const-string v4, "MTN Nigeria Communications Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x313

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26d

    const/16 v2, 0x28

    const-string v3, "M-Tel"

    const-string v4, "Nigerian Mobile Telecommunications Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x314

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26d

    const/16 v2, 0x32

    const-string v3, "Glo"

    const-string v4, "Globacom Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x315

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26e

    const/4 v2, 0x1

    const-string v3, "Zain"

    const-string v4, "CelTel Tchad SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x316

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26e

    const/4 v2, 0x3

    const-string v3, "TIGO - Millicom"

    const-string v4, "TIGO - Millicom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x317

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26f

    const/4 v2, 0x1

    const-string v3, "CTP"

    const-string v4, "Centrafrique Telecom Plus"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x318

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26f

    const/4 v2, 0x2

    const-string v3, "TC"

    const-string v4, "iTelecel Centrafrique"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x319

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26f

    const/4 v2, 0x3

    const-string v3, "Orange"

    const-string v4, "Orange RCA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x31a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x26f

    const/4 v2, 0x4

    const-string v3, "Nationlink"

    const-string v4, "Nationlink Telecom RCA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x31b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x270

    const/4 v2, 0x1

    const-string v3, "MTN-Cameroon"

    const-string v4, "Mobile Telephone Network Cameroon Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x31c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x270

    const/4 v2, 0x2

    const-string v3, "Orange"

    const-string v4, "Orange Cameroun S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x31d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x271

    const/4 v2, 0x1

    const-string v3, "CMOVEL"

    const-string v4, "CVMovel, S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x31e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x272

    const/4 v2, 0x1

    const-string v3, "CSTmovel"

    const-string v4, "Companhia Santomese de Telecomunicacoe"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x31f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x273

    const/4 v2, 0x1

    const-string v3, "Orange GQ"

    const-string v4, "GETESA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x320

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x274

    const/4 v2, 0x1

    const-string v3, "Libertis"

    const-string v4, "Libertis S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x321

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x274

    const/4 v2, 0x2

    const-string v3, "Moov (Telecel) Gabon S.A."

    const-string v4, "Moov (Telecel) Gabon S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x322

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x274

    const/4 v2, 0x3

    const-string v3, "Zain"

    const-string v4, "Celtel Gabon S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x323

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x275

    const/16 v2, 0xa

    const-string v3, "Libertis Telecom"

    const-string v4, "MTN CONGO S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x324

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x276

    const/4 v2, 0x1

    const-string v3, "Vodacom"

    const-string v4, "Vodacom Congo RDC sprl"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x325

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x276

    const/4 v2, 0x2

    const-string v3, "Zain"

    const-string v4, "Celtel Congo"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x326

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x276

    const/4 v2, 0x5

    const-string v3, "Supercell"

    const-string v4, "Supercell SPRL"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x327

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x276

    const/16 v2, 0x56

    const-string v3, "CCT"

    const-string v4, "Congo-Chine Telecom s.a.r.l"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x328

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x276

    const/16 v2, 0x59

    const-string v3, "SAIT Telecom"

    const-string v4, "OASIS SPRL"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x329

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x277

    const/4 v2, 0x2

    const-string v3, "UNITEL"

    const-string v4, "UNITEL S.a.r.l."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x32a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x278

    const/4 v2, 0x2

    const-string v3, "Areeba"

    const-string v4, "Spacetel Guine-Bissau S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x32b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x279

    const/4 v2, 0x2

    const-string v3, "Mdeiatech International"

    const-string v4, "Mdeiatech International Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x32c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27a

    const/4 v2, 0x1

    const-string v3, "Mobitel/Mobile Telephone Company"

    const-string v4, "Mobitel/Mobile Telephone Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x32d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27a

    const/4 v2, 0x2

    const-string v3, "MTN"

    const-string v4, "MTN Sudan"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x32e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27b

    const/16 v2, 0xa

    const-string v3, "MTN"

    const-string v4, "MTN Rwandacell SARL"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x32f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27c

    const/4 v2, 0x1

    const-string v3, "ETMTN"

    const-string v4, "Ethiopian Telecommmunications Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x330

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27d

    const/4 v2, 0x4

    const-string v3, "Somafona"

    const-string v4, "Somafona FZLLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x331

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27d

    const/16 v2, 0xa

    const-string v3, "Nationalink"

    const-string v4, "Nationalink"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x332

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27d

    const/16 v2, 0x13

    const-string v3, "Hormuud"

    const-string v4, "Hormuud Telecom Somalia Inc"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x333

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27d

    const/16 v2, 0x1e

    const-string v3, "Golis"

    const-string v4, "Golis Telecommunications Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x334

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27d

    const/16 v2, 0x3e

    const-string v3, "Telcom Mobile"

    const-string v4, "Telcom Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x335

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27d

    const/16 v2, 0x41

    const-string v3, "Telcom Mobile"

    const-string v4, "Telcom Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x336

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27d

    const/16 v2, 0x52

    const-string v3, "Telcom Somalia"

    const-string v4, "Telcom Somalia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x337

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27e

    const/4 v2, 0x1

    const-string v3, "Evatis"

    const-string v4, "Djibouti Telecom SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x338

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27f

    const/4 v2, 0x2

    const-string v3, "Safaricom"

    const-string v4, "Safaricom Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x339

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27f

    const/4 v2, 0x3

    const-string v3, "Zain"

    const-string v4, "Celtel Kenya Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x33a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x27f

    const/4 v2, 0x7

    const-string v3, "Orange Kenya"

    const-string v4, "Telkom Kemya"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x33b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x280

    const/4 v2, 0x2

    const-string v3, "Mobitel"

    const-string v4, "MIC Tanzania Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x33c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x280

    const/4 v2, 0x3

    const-string v3, "Zantel"

    const-string v4, "Zanzibar Telecom Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x33d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x280

    const/4 v2, 0x4

    const-string v3, "Vodacom"

    const-string v4, "Vodacom Tanzania Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x33e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x281

    const/16 v2, 0xa

    const-string v3, "MTN"

    const-string v4, "MTN Uganda"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x33f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x281

    const/16 v2, 0xe

    const-string v3, "Orange"

    const-string v4, "Orange Uganda"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x340

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x281

    const/16 v2, 0x16

    const-string v3, "Warid Telecom"

    const-string v4, "Warid Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x341

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x282

    const/4 v2, 0x1

    const-string v3, "Spacetel"

    const-string v4, "Econet Wireless Burundi PLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x342

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x282

    const/4 v2, 0x2

    const-string v3, "Aficell"

    const-string v4, "Africell PLC"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x343

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x282

    const/4 v2, 0x3

    const-string v3, "Telecel"

    const-string v4, "Telecel Burundi Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x344

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x283

    const/4 v2, 0x1

    const-string v3, "mCel"

    const-string v4, "Mocambique Celular S.A.R.L."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x345

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x285

    const/4 v2, 0x1

    const-string v3, "Zain"

    const-string v4, "Zain"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x346

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x285

    const/4 v2, 0x2

    const-string v3, "MTN"

    const-string v4, "MTN"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x347

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x285

    const/4 v2, 0x3

    const-string v3, "ZAMTEL"

    const-string v4, "ZAMTEL"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x348

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x286

    const/4 v2, 0x1

    const-string v3, "Zain"

    const-string v4, "Celtel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x349

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x286

    const/4 v2, 0x2

    const-string v3, "Orange"

    const-string v4, "Orange Madagascar S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x34a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x286

    const/4 v2, 0x4

    const-string v3, "Telma"

    const-string v4, "Telma Mobile S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x34b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x287

    const/4 v2, 0x0

    const-string v3, "Orange"

    const-string v4, "Orange La Reunion"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x34c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x287

    const/4 v2, 0x2

    const-string v3, "Outremer"

    const-string v4, "Outremer Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x34d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x287

    const/16 v2, 0xa

    const-string v3, "SFR Reunion"

    const-string v4, "Societe Reunionnaisei de Radiotelephone"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x34e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x288

    const/4 v2, 0x1

    const-string v3, "Net*One"

    const-string v4, "Net*One cellular (Pvt) Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x34f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x288

    const/4 v2, 0x3

    const-string v3, "Telecel"

    const-string v4, "Telecel Zimbabwe (PVT) Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x350

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x288

    const/4 v2, 0x4

    const-string v3, "Econet"

    const-string v4, "Econet Wireless (Private) Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x351

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x289

    const/4 v2, 0x1

    const-string v3, "MTC"

    const-string v4, "MTC Namibia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x352

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x289

    const/4 v2, 0x3

    const-string v3, "Cell One"

    const-string v4, "Telecel Globe (Orascom)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x353

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28a

    const/4 v2, 0x1

    const-string v3, "TNM"

    const-string v4, "Telecom Network Malawi"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x354

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28a

    const/16 v2, 0xa

    const-string v3, "Zain"

    const-string v4, "Celtel Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x355

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28b

    const/4 v2, 0x1

    const-string v3, "Vodacom"

    const-string v4, "Vodacom Lesotho (Pty) Ltd"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x356

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28c

    const/4 v2, 0x1

    const-string v3, "Mascom"

    const-string v4, "Mascom Wirelessi (Pty) Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x357

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28c

    const/4 v2, 0x2

    const-string v3, "Orange"

    const-string v4, "Orange (Botswans) Pty Limited"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x358

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28c

    const/4 v2, 0x4

    const-string v3, "BTC Mobile"

    const-string v4, "Botswana Telecommunications Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x359

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28f

    const/4 v2, 0x1

    const-string v3, "Vodacom"

    const-string v4, "Vodacom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x35a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28f

    const/4 v2, 0x2

    const-string v3, "Telkom"

    const-string v4, "Telkom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x35b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28f

    const/4 v2, 0x7

    const-string v3, "Cell C"

    const-string v4, "Cell C"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x35c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x28f

    const/16 v2, 0xa

    const-string v3, "MTN"

    const-string v4, "MTN Group"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x35d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x291

    const/4 v2, 0x1

    const-string v3, "Eritel"

    const-string v4, "Eritel Telecommunications Services Corporation"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x35e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2be

    const/16 v2, 0x43

    const-string v3, "Belize Telemedia"

    const-string v4, "Belize Telemedia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x35f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2be

    const/16 v2, 0x44

    const-string v3, "International Telecommunications Ltd."

    const-string v4, "International Telecommunications Ltd."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x360

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c0

    const/4 v2, 0x1

    const-string v3, "Claro"

    const-string v4, "Servicios de Comunicaciones Personales Inalambricas (SRECOM)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x361

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c0

    const/4 v2, 0x2

    const-string v3, "Comcel / Tigo"

    const-string v4, "Millicom / Local partners"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x362

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c0

    const/4 v2, 0x3

    const-string/jumbo v3, "movistar"

    const-string v4, "Telefonica Moviles Guatemala (Telefonica)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x363

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c2

    const/4 v2, 0x1

    const-string v3, "CTE Telecom Personal"

    const-string v4, "CTE Telecom Personal SA de CV"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x364

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c2

    const/4 v2, 0x2

    const-string v3, "digicel"

    const-string v4, "Digicel Group"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x365

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c2

    const/4 v2, 0x3

    const-string v3, "Telemovil EL Salvador"

    const-string v4, "Telemovil EL Salvador S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x366

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c2

    const/4 v2, 0x4

    const-string/jumbo v3, "movistar"

    const-string v4, "Telfonica Moviles El Salvador"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x367

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c2

    const/16 v2, 0xa

    const-string v3, "Claro"

    const-string v4, "America Movil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x368

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c4

    const/4 v2, 0x1

    const-string v3, "Claro"

    const-string v4, "Servicios de Comunicaciones de Honduras S.A. de C.V."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x369

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c4

    const/4 v2, 0x2

    const-string v3, "Celtel / Tigo"

    const-string v4, "Celtel / Tigo"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x36a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c4

    const/4 v2, 0x4

    const-string v3, "DIGICEL"

    const-string v4, "Digicel de Honduras"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x36b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c4

    const/16 v2, 0x1e

    const-string v3, "Hondutel"

    const-string v4, "Empresa Hondurena de telecomunicaciones"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x36c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c6

    const/16 v2, 0x15

    const-string v3, "Claro"

    const-string v4, "Empresa Nicaraguense de Telecomunicaciones,S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x36d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c6

    const/16 v2, 0x1e

    const-string/jumbo v3, "movistar"

    const-string v4, "Telefonica Moviles de Nicaragua S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x36e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c6

    const/16 v2, 0x49

    const-string v3, "SERCOM"

    const-string v4, "Servicios de Comunicaciones S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x36f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c8

    const/4 v2, 0x1

    const-string v3, "ICE"

    const-string v4, "Instituto Costarricense de Electricidad"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x370

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2c8

    const/4 v2, 0x2

    const-string v3, "ICE"

    const-string v4, "Instituto Costarricense de Electricidad"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x371

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2ca

    const/4 v2, 0x1

    const-string v3, "Cable & Wireless"

    const-string v4, "Cable & Wireless Panama S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x372

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2ca

    const/4 v2, 0x2

    const-string/jumbo v3, "movistar"

    const-string v4, "Telefonica Moviles Panama S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x373

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2ca

    const/4 v2, 0x4

    const-string v3, "Digicel"

    const-string v4, "Digicel (Panama) S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x374

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2cc

    const/4 v2, 0x6

    const-string/jumbo v3, "movistar"

    const-string v4, "Telefonica Moviles Peru"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x375

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2cc

    const/16 v2, 0xa

    const-string v3, "Claro"

    const-string v4, "America Movil Peru"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x376

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d2

    const/16 v2, 0xa

    const-string v3, "Movistar"

    const-string v4, "Telefonica Moviles Argentina SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x377

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d2

    const/16 v2, 0x46

    const-string v3, "Movistar"

    const-string v4, "Telefonica Moviles Argentina SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x378

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d2

    const/16 v2, 0x136

    const-string v3, "Claro"

    const-string v4, "AMX Argentina S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x379

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d2

    const/16 v2, 0x140

    const-string v3, "Claro"

    const-string v4, "AMX Argentina S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x37a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d2

    const/16 v2, 0x14a

    const-string v3, "Claro"

    const-string v4, "AMX Argentina S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x37b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d2

    const/16 v2, 0x154

    const-string v3, "Personal"

    const-string v4, "Teecom Personal SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x37c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/4 v2, 0x2

    const-string v3, "TIM"

    const-string v4, "Telecom Italia Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x37d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/4 v2, 0x3

    const-string v3, "TIM"

    const-string v4, "Telecom Italia Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x37e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/4 v2, 0x4

    const-string v3, "TIM"

    const-string v4, "Telecom Italia Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x37f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/4 v2, 0x5

    const-string v3, "Claro"

    const-string v4, "Claro (America Movil)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x380

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/4 v2, 0x6

    const-string v3, "Vivo"

    const-string v4, "Vivo S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x381

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/4 v2, 0x7

    const-string v3, "CTBC Celular"

    const-string v4, "CTBC Telecom"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x382

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0x8

    const-string v3, "TIM"

    const-string v4, "Telecom Italiz Mobile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x383

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0xa

    const-string v3, "Vivo"

    const-string v4, "Vivo S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x384

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0xb

    const-string v3, "Vivo"

    const-string v4, "Vivo S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x385

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0xf

    const-string v3, "Sercomtel"

    const-string v4, "Sercomtel Celular"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x386

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0x10

    const-string v3, "Oi / Brasil Telecom"

    const-string v4, "Brasil Telecom Celular SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x387

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0x17

    const-string v3, "Vivo"

    const-string v4, "Vivo S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x388

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0x18

    const-string v3, "Oi / Amazonia Celular"

    const-string v4, "Amazonia Celular S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x389

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0x1f

    const-string v3, "Oi"

    const-string v4, "TNL PCS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x38a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2d4

    const/16 v2, 0x25

    const-string v3, "aeiou"

    const-string v4, "Unicel do Brasil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x38b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2da

    const/4 v2, 0x1

    const-string v3, "Entel"

    const-string v4, "Entel Pcs"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x38c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2da

    const/4 v2, 0x2

    const-string/jumbo v3, "movistar"

    const-string v4, "Movistar Chile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x38d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2da

    const/4 v2, 0x3

    const-string v3, "Claro"

    const-string v4, "Claro Chile"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x38e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2da

    const/16 v2, 0xa

    const-string v3, "Entel"

    const-string v4, "Entel Telefonica Movil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x38f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2dc

    const/16 v2, 0x65

    const-string v3, "Comcel"

    const-string v4, "Comcel Colombia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x390

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2dc

    const/16 v2, 0x66

    const-string/jumbo v3, "movistar"

    const-string v4, "Bellsouth Colombia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x391

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2dc

    const/16 v2, 0x67

    const-string v3, "Tigo"

    const-string v4, "Colombia Movil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x392

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2dc

    const/16 v2, 0x6f

    const-string v3, "Tigo"

    const-string v4, "Colombia Movil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x393

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2dc

    const/16 v2, 0x7b

    const-string/jumbo v3, "movistar"

    const-string v4, "Telefonica Moviles Colombia"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x394

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2de

    const/4 v2, 0x1

    const-string v3, "Digitel"

    const-string v4, "Corporacion Digitel C.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x395

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2de

    const/4 v2, 0x2

    const-string v3, "Digitel"

    const-string v4, "Corporacion Digitel C.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x396

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2de

    const/4 v2, 0x3

    const-string v3, "Digitel"

    const-string v4, "Corporacion Digitel C.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x397

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2de

    const/4 v2, 0x4

    const-string/jumbo v3, "movistar"

    const-string v4, "Telefonica Moviles Venezuela"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x398

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2de

    const/4 v2, 0x6

    const-string v3, "Movilnet"

    const-string v4, "Telecommunicaciones Movilnet"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x399

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e0

    const/4 v2, 0x1

    const-string v3, "Nuevatel"

    const-string v4, "Nuevatel PCS De Bolivia SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x39a

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e0

    const/4 v2, 0x2

    const-string v3, "Entel"

    const-string v4, "Entel SA"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x39b

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e0

    const/4 v2, 0x3

    const-string v3, "Tigo"

    const-string v4, "Telefonica Celular De Bolivia S.A"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x39c

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e2

    const/4 v2, 0x1

    const-string v3, "Digicel"

    const-string v4, "U-Mobile (Cellular) Inc."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x39d

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e4

    const/4 v2, 0x0

    const-string v3, "Movistar"

    const-string v4, "Otecel S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x39e

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e4

    const/4 v2, 0x1

    const-string v3, "Porta"

    const-string v4, "America Movil"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x39f

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e8

    const/4 v2, 0x1

    const-string v3, "VOX"

    const-string v4, "Hola Paraguay S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e8

    const/4 v2, 0x2

    const-string v3, "Claro"

    const-string v4, "AMX Paraguay S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e8

    const/4 v2, 0x4

    const-string v3, "Tigo"

    const-string v4, "Telefonica Celular Del Paraguay S.A. (Telecel)"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2e8

    const/4 v2, 0x5

    const-string v3, "Personal"

    const-string v4, "Nucleo S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2ec

    const/4 v2, 0x1

    const-string v3, "Ancel"

    const-string v4, "Ancel"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2ec

    const/4 v2, 0x7

    const-string v3, "Movistar"

    const-string v4, "Telefonica Moviles Uruguay"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x2ec

    const/16 v2, 0xa

    const-string v3, "Claro"

    const-string v4, "AM Wireless Uruguay S.A."

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/4 v2, 0x1

    const-string v3, "ICO"

    const-string v4, "ICO Satellite Management"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/4 v2, 0x2

    const-string v3, "Sense Communications International"

    const-string v4, "Sense Communications International"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a8

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/4 v2, 0x3

    const-string v3, "Iridium"

    const-string v4, "Iridium"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3a9

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/4 v2, 0x4

    const-string v3, "GlobalStar"

    const-string v4, "Globalstar"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3aa

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/4 v2, 0x5

    const-string v3, "Thuraya RMSS Network"

    const-string v4, "Thuraya RMSS Network"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3ab

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/4 v2, 0x6

    const-string v3, "Thuraya Satellite telecommunications Company"

    const-string v4, "Thuraya Satellite Telecommunications Company"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3ac

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/4 v2, 0x7

    const-string v3, "Ellipso"

    const-string v4, "Ellipso"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3ad

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0x9

    const-string v3, "Tele1 Europe"

    const-string v4, "Tele1 Europe"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3ae

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0xa

    const-string v3, "ACeS"

    const-string v4, "ACeS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3af

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0xb

    const-string v3, "Immarsat"

    const-string v4, "Immarsat"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b0

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0xc

    const-string v3, "MCP"

    const-string v4, "Maritime Communications Partner AS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b1

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0xd

    const-string v3, "GSM.AQ"

    const-string v4, "GSM.AQ"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b2

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0xe

    const-string v3, "AeroMobile AS"

    const-string v4, "AeroMobile AS"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b3

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0xf

    const-string v3, "OnAir Switzerland Sarl"

    const-string v4, "OnAir Switzerland Sarl"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b4

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0x10

    const-string v3, "Jasper Systems"

    const-string v4, "Jasper Systems"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b5

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0x11

    const-string v3, "Navitas"

    const-string v4, "Navitas"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b6

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0x12

    const-string v3, "Cingular Wireless"

    const-string v4, "Cingular Wireless"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    const/16 v7, 0x3b7

    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/16 v1, 0x385

    const/16 v2, 0x13

    const-string v3, "Vodafone Malta Maritime"

    const-string v4, "Vodafone Malta Maritime"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    aput-object v0, v6, v7

    sput-object v6, Landroid/provider/SpnProvider;->LIST_MCC_MNC_SPN:[Landroid/provider/SpnProvider$SPNObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getSPNByMCCMNC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "numeric"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1849
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1850
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "numeric should be a string and its length should be at least 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1853
    :cond_1
    new-instance v0, Landroid/provider/SpnProvider$SPNObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V

    .line 1865
    .local v0, temp:Landroid/provider/SpnProvider$SPNObject;
    sget-object v6, Landroid/provider/SpnProvider;->LIST_MCC_MNC_SPN:[Landroid/provider/SpnProvider$SPNObject;

    .local v6, arr$:[Landroid/provider/SpnProvider$SPNObject;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v9, v6, v7

    .line 1866
    .local v9, spn:Landroid/provider/SpnProvider$SPNObject;
    invoke-virtual {v0, v9}, Landroid/provider/SpnProvider$SPNObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1867
    iget-object v1, v9, Landroid/provider/SpnProvider$SPNObject;->spn:Ljava/lang/String;

    .line 1870
    .end local v9           #spn:Landroid/provider/SpnProvider$SPNObject;
    :goto_1
    return-object v1

    .line 1865
    .restart local v9       #spn:Landroid/provider/SpnProvider$SPNObject;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1870
    .end local v9           #spn:Landroid/provider/SpnProvider$SPNObject;
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method
