.class Lcom/android/internal/telephony/cat/LaunchBrowserParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mMode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "url"
    .parameter "mode"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 90
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 91
    iput-object p4, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mMode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 92
    iput-object p3, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mUrl:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
