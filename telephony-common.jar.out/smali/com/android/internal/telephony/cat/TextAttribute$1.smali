.class final Lcom/android/internal/telephony/cat/TextAttribute$1;
.super Ljava/lang/Object;
.source "TextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/TextAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/cat/TextAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/TextAttribute;
    .locals 2
    .parameter "in"

    .prologue
    .line 85
    new-instance v0, Lcom/android/internal/telephony/cat/TextAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/TextAttribute$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/TextAttribute$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/TextAttribute;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/TextAttribute;
    .locals 1
    .parameter "size"

    .prologue
    .line 89
    new-array v0, p1, [Lcom/android/internal/telephony/cat/TextAttribute;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/TextAttribute$1;->newArray(I)[Lcom/android/internal/telephony/cat/TextAttribute;

    move-result-object v0

    return-object v0
.end method
