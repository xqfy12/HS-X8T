.class Lcom/android/server/FirmwareUpdate;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirmwareUpdate"

.field private static final UPDATE_CTL_FILE:Ljava/lang/String; = "/sys/ctp/ctp_update/"

.field private static final UP_CHECK_INTERVAL:I = 0x3e8

.field private static final UP_RES_FAIL:I = 0x1

.field private static final UP_RES_OK:I = 0x0

.field private static final UP_RES_ONGOING:I = 0x2

.field private static final UP_TIMEOUT:I = 0xea60

.field private static mContext:Landroid/content/Context;

.field private static mCurMsgId:I

.field private static mWaitingUpdateThreadRuning:Z

.field private static step:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    sput v0, Lcom/android/server/FirmwareUpdate;->mCurMsgId:I

    .line 101
    sput-boolean v0, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    .line 276
    sput v0, Lcom/android/server/FirmwareUpdate;->step:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WaitingShowdialog()V
    .locals 5

    .prologue
    .line 209
    const/16 v0, 0x3c

    .line 210
    .local v0, n:I
    div-int/lit8 v0, v0, 0xa

    move v1, v0

    .line 213
    .end local v0           #n:I
    .local v1, n:I
    :goto_0
    :try_start_0
    const-string v2, "FirmwareUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show dialog message n ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const v2, 0x10405cf

    invoke-static {v2}, Lcom/android/server/FirmwareUpdate;->showMessage(I)V

    .line 215
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #n:I
    .restart local v0       #n:I
    if-gtz v1, :cond_0

    .line 220
    return-void

    .line 217
    .end local v0           #n:I
    .restart local v1       #n:I
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_0
    move v1, v0

    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->triggerUpdate()Z

    move-result v0

    return v0
.end method

.method public static checkIfUpdateNeeded()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 138
    const-string v2, "FirmwareUpdate"

    const-string v3, "checkIfUpdateNeeded()."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, mFwstate:Ljava/lang/String;
    const-string v2, "/sys/ctp/ctp_update/fwstate"

    invoke-static {v2}, Lcom/android/server/FirmwareUpdate;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkUpdateStatus()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 164
    const-string v2, "FirmwareUpdate"

    const-string v3, "checkUpdateStatus()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, mFwstate:Ljava/lang/String;
    const-string v2, "/sys/ctp/ctp_update/fwupdate"

    invoke-static {v2}, Lcom/android/server/FirmwareUpdate;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const/4 v1, 0x0

    goto :goto_0

    .line 175
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private static getFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filepath"

    .prologue
    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, in:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 226
    .local v0, data:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    const-string v4, "FirmwareUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++open file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",success!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v4, "FirmwareUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++read file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 236
    if-eqz v3, :cond_0

    .line 237
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v2, v3

    .line 242
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "FirmwareUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read fail:file not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    if-eqz v2, :cond_1

    .line 237
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 238
    :catch_1
    move-exception v1

    .line 239
    .local v1, e:Ljava/io/IOException;
    const-string v4, "FirmwareUpdate"

    const-string v5, "Error closing"

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 232
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 233
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v4, "FirmwareUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    if-eqz v2, :cond_1

    .line 237
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 238
    :catch_3
    move-exception v1

    .line 239
    const-string v4, "FirmwareUpdate"

    const-string v5, "Error closing"

    goto :goto_3

    .line 235
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 236
    :goto_5
    if-eqz v2, :cond_2

    .line 237
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 235
    :cond_2
    :goto_6
    throw v4

    .line 238
    :catch_4
    move-exception v1

    .line 239
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "FirmwareUpdate"

    const-string v6, "Error closing"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 238
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .line 239
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "FirmwareUpdate"

    const-string v5, "Error closing"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_5

    .line 232
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_4

    .line 230
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static showMessage(I)V
    .locals 4
    .parameter "msgId"

    .prologue
    .line 278
    sget-object v2, Lcom/android/server/FirmwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, msgText:Ljava/lang/String;
    sget v2, Lcom/android/server/FirmwareUpdate;->mCurMsgId:I

    if-ne v2, p0, :cond_1

    .line 280
    sget v2, Lcom/android/server/FirmwareUpdate;->step:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/FirmwareUpdate;->step:I

    .line 281
    sget v2, Lcom/android/server/FirmwareUpdate;->step:I

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 282
    const/4 v2, 0x0

    sput v2, Lcom/android/server/FirmwareUpdate;->step:I

    .line 284
    :cond_0
    sget v1, Lcom/android/server/FirmwareUpdate;->step:I

    .line 285
    .local v1, n:I
    :goto_0
    if-lez v1, :cond_1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 290
    .end local v1           #n:I
    :cond_1
    sput p0, Lcom/android/server/FirmwareUpdate;->mCurMsgId:I

    .line 293
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    return-void

    .line 294
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static triggerUpdate()Z
    .locals 2

    .prologue
    .line 155
    const-string v0, "FirmwareUpdate"

    const-string v1, "triggerUpdate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    .line 157
    const-string v0, "/sys/ctp/ctp_update/fwupdate"

    invoke-static {v0}, Lcom/android/server/FirmwareUpdate;->writeFileData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateIfNeeded(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    sput-object p0, Lcom/android/server/FirmwareUpdate;->mContext:Landroid/content/Context;

    .line 106
    sget-boolean v0, Lcom/android/server/ServerThread;->mcheckIfBatteryLow:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "FirmwareUpdate"

    const-string v1, "Battery low Firmware don\'t update"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->WaitingShowdialog()V

    .line 110
    :cond_0
    sget-boolean v0, Lcom/android/server/ServerThread;->mcheckIfUpdateNeeded:Z

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "FirmwareUpdate"

    const-string v1, "Firmware update is needed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/FirmwareUpdate$1;

    invoke-direct {v1}, Lcom/android/server/FirmwareUpdate$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    const-string v0, "FirmwareUpdate"

    const-string v1, "Firmware update show start."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->waitingUpdateComplete()V

    .line 128
    const-string v0, "FirmwareUpdate"

    const-string v1, "Firmware update show ended."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v0, "FirmwareUpdate"

    const-string v1, "Firmware Update is not needed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static waitingUpdateComplete()V
    .locals 6

    .prologue
    .line 182
    const/16 v0, 0x3c

    .local v0, n:I
    move v1, v0

    .line 185
    .end local v0           #n:I
    .local v1, n:I
    :goto_0
    :try_start_0
    sget-boolean v3, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    if-eqz v3, :cond_0

    .line 186
    const-string v3, "FirmwareUpdate"

    const-string v4, "waitting for update thread scheduled "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const v3, 0x104058d

    invoke-static {v3}, Lcom/android/server/FirmwareUpdate;->showMessage(I)V

    .line 188
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #n:I
    .restart local v0       #n:I
    if-gtz v1, :cond_3

    .line 207
    :goto_2
    return-void

    .line 191
    .end local v0           #n:I
    .restart local v1       #n:I
    :cond_0
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->checkUpdateStatus()I

    move-result v2

    .line 192
    .local v2, res:I
    const-string v3, "FirmwareUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUpdateStatus return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at n = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez v2, :cond_1

    .line 194
    const-string v3, "FirmwareUpdate"

    const-string v4, "show the update message is ok "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 195
    .end local v1           #n:I
    .restart local v0       #n:I
    goto :goto_2

    .line 196
    .end local v0           #n:I
    .restart local v1       #n:I
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 197
    const-string v3, "FirmwareUpdate"

    const-string v4, "show the update message is FAIL "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 198
    .end local v1           #n:I
    .restart local v0       #n:I
    goto :goto_2

    .line 200
    .end local v0           #n:I
    .restart local v1       #n:I
    :cond_2
    const-string v3, "FirmwareUpdate"

    const-string v4, "show the update message IS UPDATING"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const v3, 0x104058d

    invoke-static {v3}, Lcom/android/server/FirmwareUpdate;->showMessage(I)V

    .line 202
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 204
    .end local v2           #res:I
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_3
    move v1, v0

    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_0
.end method

.method private static writeFileData(Ljava/lang/String;)Z
    .locals 8
    .parameter "filepath"

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, out:Ljava/io/FileWriter;
    const-string v0, "UPDATE"

    .line 249
    .local v0, data:Ljava/lang/String;
    const/4 v4, 0x1

    .line 252
    .local v4, result:Z
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 253
    .end local v2           #out:Ljava/io/FileWriter;
    .local v3, out:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "++open file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",success!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 255
    const-string v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "++write file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 264
    if-eqz v3, :cond_0

    .line 265
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v2, v3

    .line 270
    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return v4

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write fail:file not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    const/4 v4, 0x0

    .line 264
    if-eqz v2, :cond_1

    .line 265
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 266
    :catch_1
    move-exception v1

    .line 267
    .local v1, e:Ljava/io/IOException;
    const-string v5, "FirmwareUpdate"

    const-string v6, "Error closing"

    :goto_3
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 259
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 260
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    const/4 v4, 0x0

    .line 264
    if-eqz v2, :cond_1

    .line 265
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 266
    :catch_3
    move-exception v1

    .line 267
    const-string v5, "FirmwareUpdate"

    const-string v6, "Error closing"

    goto :goto_3

    .line 263
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 264
    :goto_5
    if-eqz v2, :cond_2

    .line 265
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 263
    :cond_2
    :goto_6
    throw v5

    .line 266
    :catch_4
    move-exception v1

    .line 267
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "FirmwareUpdate"

    const-string v7, "Error closing"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 266
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_5
    move-exception v1

    .line 267
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "FirmwareUpdate"

    const-string v6, "Error closing"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_5

    .line 259
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_4

    .line 256
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v3       #out:Ljava/io/FileWriter;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    goto :goto_2
.end method
