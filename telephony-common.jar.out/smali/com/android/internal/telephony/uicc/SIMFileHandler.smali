.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# instance fields
.field private mApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 38
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 2
    .parameter "efid"

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 70
    sparse-switch p1, :sswitch_data_1

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMFileHandler;->mApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    .line 145
    const-string v0, "3F007F105F3A"

    .line 149
    :goto_1
    return-object v0

    .line 54
    :sswitch_0
    const-string v0, "3F007F20"

    goto :goto_1

    .line 57
    :sswitch_1
    const-string v0, "3F007F105F50"

    goto :goto_1

    .line 61
    :sswitch_2
    const-string v0, "3F00"

    goto :goto_1

    .line 65
    :sswitch_3
    const-string v0, "3F007F105F3A"

    goto :goto_1

    .line 101
    :sswitch_4
    const-string v0, "7FFF"

    goto :goto_1

    .line 105
    :cond_0
    sparse-switch p1, :sswitch_data_2

    goto :goto_0

    .line 130
    :sswitch_5
    const-string v0, "3F007F20"

    goto :goto_1

    .line 118
    :sswitch_6
    const-string v0, "3F007F10"

    goto :goto_1

    .line 133
    :sswitch_7
    const-string v0, "3F007F20"

    goto :goto_1

    .line 137
    :sswitch_8
    const-string v0, "3F007F10"

    goto :goto_1

    .line 147
    :cond_1
    const-string v0, "Error: EF Path being returned in null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->loge(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_2
        0x2fe2 -> :sswitch_2
        0x4f20 -> :sswitch_1
        0x4f30 -> :sswitch_3
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f60 -> :sswitch_0
    .end sparse-switch

    .line 70
    :sswitch_data_1
    .sparse-switch
        0x6f06 -> :sswitch_4
        0x6f38 -> :sswitch_4
        0x6f3b -> :sswitch_4
        0x6f3c -> :sswitch_4
        0x6f40 -> :sswitch_4
        0x6f42 -> :sswitch_4
        0x6f43 -> :sswitch_4
        0x6f44 -> :sswitch_4
        0x6f46 -> :sswitch_4
        0x6f47 -> :sswitch_4
        0x6f49 -> :sswitch_4
        0x6f4b -> :sswitch_4
        0x6f4c -> :sswitch_4
        0x6f4d -> :sswitch_4
        0x6f4e -> :sswitch_4
        0x6f4f -> :sswitch_4
        0x6f53 -> :sswitch_4
        0x6f54 -> :sswitch_4
        0x6fad -> :sswitch_4
        0x6fb7 -> :sswitch_4
        0x6fc5 -> :sswitch_4
        0x6fc7 -> :sswitch_4
        0x6fc8 -> :sswitch_4
        0x6fc9 -> :sswitch_4
        0x6fca -> :sswitch_4
        0x6fcb -> :sswitch_4
        0x6fcd -> :sswitch_4
        0x6fe0 -> :sswitch_4
        0x6fe1 -> :sswitch_4
        0x6fe5 -> :sswitch_4
    .end sparse-switch

    .line 105
    :sswitch_data_2
    .sparse-switch
        0x6f38 -> :sswitch_5
        0x6f3a -> :sswitch_8
        0x6f3b -> :sswitch_6
        0x6f3c -> :sswitch_6
        0x6f40 -> :sswitch_6
        0x6f42 -> :sswitch_6
        0x6f43 -> :sswitch_6
        0x6f44 -> :sswitch_6
        0x6f46 -> :sswitch_5
        0x6f47 -> :sswitch_6
        0x6f49 -> :sswitch_6
        0x6f4a -> :sswitch_8
        0x6f4b -> :sswitch_6
        0x6f4c -> :sswitch_6
        0x6f4e -> :sswitch_6
        0x6f4f -> :sswitch_6
        0x6fad -> :sswitch_5
        0x6fb7 -> :sswitch_7
        0x6fc5 -> :sswitch_5
        0x6fc7 -> :sswitch_5
        0x6fc8 -> :sswitch_5
        0x6fc9 -> :sswitch_5
        0x6fca -> :sswitch_5
        0x6fcb -> :sswitch_5
        0x6fcd -> :sswitch_5
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 154
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 159
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
