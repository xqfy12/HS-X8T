.class final Landroid/provider/SpnProvider$SPNObject;
.super Ljava/lang/Object;
.source "SpnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SpnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SPNObject"
.end annotation


# instance fields
.field desc:Ljava/lang/String;

.field mcc:I

.field mnc:I

.field spn:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "mnc"
    .parameter "spn"
    .parameter "desc"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/provider/SpnProvider$SPNObject;->mcc:I

    .line 54
    iput p2, p0, Landroid/provider/SpnProvider$SPNObject;->mnc:I

    .line 55
    iput-object p3, p0, Landroid/provider/SpnProvider$SPNObject;->spn:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Landroid/provider/SpnProvider$SPNObject;->desc:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/provider/SpnProvider$SPNObject;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 65
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    move-object v0, p1

    .line 63
    check-cast v0, Landroid/provider/SpnProvider$SPNObject;

    iget v0, v0, Landroid/provider/SpnProvider$SPNObject;->mcc:I

    iget v2, p0, Landroid/provider/SpnProvider$SPNObject;->mcc:I

    if-ne v0, v2, :cond_2

    check-cast p1, Landroid/provider/SpnProvider$SPNObject;

    .end local p1
    iget v0, p1, Landroid/provider/SpnProvider$SPNObject;->mnc:I

    iget v2, p0, Landroid/provider/SpnProvider$SPNObject;->mnc:I

    if-ne v0, v2, :cond_2

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0
.end method
