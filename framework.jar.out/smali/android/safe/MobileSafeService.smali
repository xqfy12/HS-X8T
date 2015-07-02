.class public Landroid/safe/MobileSafeService;
.super Landroid/safe/IMobileSafe$Stub;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/MobileSafeService$SafeThread;,
        Landroid/safe/MobileSafeService$SafeAlertDialog;,
        Landroid/safe/MobileSafeService$DialogHandler;
    }
.end annotation


# static fields
.field private static final INQUIRE_TIMEOUT:I = 0x2710

.field private static final MSG_DISMISS_DIALOG:I = 0x3e9

.field private static final MSG_SHOW_DIALOG:I = 0x3e8

.field private static final MSG_UPDATE_BUTTON_TEXT:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "MobileSafeService"


# instance fields
.field private mAllow:I

.field private final mCheckLock:Ljava/lang/Object;

.field private mCheckResultCached:I

.field private mClient:Landroid/safe/IMobileSafeClient;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/safe/MobileSafeService$DialogHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNeedConfirm:Z

.field private mNegativeButtonText:Ljava/lang/String;

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionCached:Ljava/lang/String;

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/safe/Permission;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mTimeCached:J

.field private mUidCached:I

.field final mUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 149
    invoke-direct {p0}, Landroid/safe/IMobileSafe$Stub;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mUids:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mPackages:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mCheckLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/safe/MobileSafeService;->mNeedConfirm:Z

    .line 89
    iput v1, p0, Landroid/safe/MobileSafeService;->mAllow:I

    .line 99
    const/16 v0, 0xa

    iput v0, p0, Landroid/safe/MobileSafeService;->mCount:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mPermissionCached:Ljava/lang/String;

    .line 103
    iput v1, p0, Landroid/safe/MobileSafeService;->mUidCached:I

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/safe/MobileSafeService;->mTimeCached:J

    .line 141
    new-instance v0, Landroid/safe/MobileSafeService$1;

    invoke-direct {v0, p0}, Landroid/safe/MobileSafeService$1;-><init>(Landroid/safe/MobileSafeService;)V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 150
    iput-object p1, p0, Landroid/safe/MobileSafeService;->mContext:Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Landroid/safe/MobileSafeService;->readXml()V

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MobileSafeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mThread:Landroid/os/HandlerThread;

    .line 154
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Landroid/safe/MobileSafeService$DialogHandler;

    iget-object v1, p0, Landroid/safe/MobileSafeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/safe/MobileSafeService$DialogHandler;-><init>(Landroid/safe/MobileSafeService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;

    .line 158
    return-void
.end method

.method static synthetic access$000(Landroid/safe/MobileSafeService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/safe/MobileSafeService;->showConfirmDialog(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/safe/MobileSafeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Landroid/safe/MobileSafeService;->mCount:I

    return v0
.end method

.method static synthetic access$102(Landroid/safe/MobileSafeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/safe/MobileSafeService;->mCount:I

    return p1
.end method

.method static synthetic access$110(Landroid/safe/MobileSafeService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Landroid/safe/MobileSafeService;->mCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/safe/MobileSafeService;->mCount:I

    return v0
.end method

.method static synthetic access$200(Landroid/safe/MobileSafeService;)Landroid/safe/MobileSafeService$DialogHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/safe/MobileSafeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/safe/MobileSafeService;->dismissConfirmDialog()V

    return-void
.end method

.method static synthetic access$400(Landroid/safe/MobileSafeService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/safe/MobileSafeService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Landroid/safe/MobileSafeService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/safe/MobileSafeService;->getNegativeButtonText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Landroid/safe/MobileSafeService;Landroid/safe/IMobileSafeClient;)Landroid/safe/IMobileSafeClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/safe/MobileSafeService;->mClient:Landroid/safe/IMobileSafeClient;

    return-object p1
.end method

.method static synthetic access$700(Landroid/safe/MobileSafeService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/safe/MobileSafeService;->confirmPermission(Z)V

    return-void
.end method

.method private checkUidPermissionInternal(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 12
    .parameter "permName"
    .parameter "uid"
    .parameter "extras"

    .prologue
    const/4 v11, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 191
    iget-object v7, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 192
    .local v4, permissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/safe/Permission;>;"
    if-nez v4, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v5

    .line 196
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/safe/Permission;

    .line 197
    .local v3, perm:Landroid/safe/Permission;
    iget-object v7, v3, Landroid/safe/Permission;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    iget-boolean v7, v3, Landroid/safe/Permission;->needConfirm:Z

    if-nez v7, :cond_3

    move v5, v6

    .line 205
    goto :goto_0

    .line 209
    :cond_3
    iget v7, p0, Landroid/safe/MobileSafeService;->mUidCached:I

    if-ne v7, p2, :cond_4

    iget-object v7, p0, Landroid/safe/MobileSafeService;->mPermissionCached:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/safe/MobileSafeService;->mTimeCached:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/safe/MobileSafeService;->mTimeCached:J

    .line 213
    iget v7, p0, Landroid/safe/MobileSafeService;->mCheckResultCached:I

    if-eq v7, v11, :cond_0

    move v5, v6

    .line 216
    goto :goto_0

    .line 221
    :cond_4
    iget-object v7, p0, Landroid/safe/MobileSafeService;->mClient:Landroid/safe/IMobileSafeClient;

    if-eqz v7, :cond_0

    .line 225
    iput p2, p0, Landroid/safe/MobileSafeService;->mUidCached:I

    .line 226
    iput-object p1, p0, Landroid/safe/MobileSafeService;->mPermissionCached:Ljava/lang/String;

    .line 229
    iput v6, p0, Landroid/safe/MobileSafeService;->mAllow:I

    .line 230
    iget-object v7, p0, Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;

    const/16 v8, 0x3e8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    aput-object p1, v9, v5

    invoke-direct {p0, p1, p2, p3}, Landroid/safe/MobileSafeService;->getDialogMsgForClient(Ljava/lang/String;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, p2, v5, v9}, Landroid/safe/MobileSafeService$DialogHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 231
    .local v2, msg:Landroid/os/Message;
    iget-object v7, p0, Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;

    invoke-virtual {v7, v2}, Landroid/safe/MobileSafeService$DialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    iget-object v7, p0, Landroid/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 235
    :try_start_0
    iget-object v8, p0, Landroid/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    const-wide/16 v9, 0x2710

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    iget v7, p0, Landroid/safe/MobileSafeService;->mAllow:I

    iput v7, p0, Landroid/safe/MobileSafeService;->mCheckResultCached:I

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/safe/MobileSafeService;->mTimeCached:J

    .line 243
    iget v7, p0, Landroid/safe/MobileSafeService;->mAllow:I

    if-eq v7, v11, :cond_0

    .line 246
    iget v5, p0, Landroid/safe/MobileSafeService;->mAllow:I

    if-ne v5, v6, :cond_5

    .line 247
    iget-object v5, p0, Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;

    const/16 v7, 0x3e9

    invoke-virtual {v5, v7}, Landroid/safe/MobileSafeService$DialogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, dismissMsg:Landroid/os/Message;
    iget-object v5, p0, Landroid/safe/MobileSafeService;->mHandler:Landroid/safe/MobileSafeService$DialogHandler;

    invoke-virtual {v5, v0}, Landroid/safe/MobileSafeService$DialogHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #dismissMsg:Landroid/os/Message;
    :cond_5
    move v5, v6

    .line 251
    goto/16 :goto_0

    .line 238
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 236
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private confirmPermission(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 355
    const-string v0, "MobileSafeService"

    const-string v1, "+ confirmPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Landroid/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput v0, p0, Landroid/safe/MobileSafeService;->mAllow:I

    .line 358
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 359
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    const-string v0, "MobileSafeService"

    const-string v1, "- confirmPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dismissConfirmDialog()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private getDialogMsgForClient(Ljava/lang/String;ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 12
    .parameter "permName"
    .parameter "uid"
    .parameter "extras"

    .prologue
    .line 593
    const/4 v7, 0x0

    .line 594
    .local v7, results:[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 596
    .local v1, callingIdentity:J
    :try_start_0
    iget-object v9, p0, Landroid/safe/MobileSafeService;->mClient:Landroid/safe/IMobileSafeClient;

    if-eqz v9, :cond_0

    .line 597
    iget-object v9, p0, Landroid/safe/MobileSafeService;->mClient:Landroid/safe/IMobileSafeClient;

    invoke-interface {v9, p1, p2, p3}, Landroid/safe/IMobileSafeClient;->obtainDialogMessage(Ljava/lang/String;ILandroid/os/Bundle;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 602
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 604
    :goto_0
    if-nez v7, :cond_1

    .line 612
    .end local p1
    :goto_1
    return-object p1

    .line 599
    .restart local p1
    :catch_0
    move-exception v3

    .line 600
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_1
    const-string v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDialogMsgForClient() throws exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 608
    :cond_1
    const-string v6, ""

    .line 609
    .local v6, result:Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .line 610
    .local v8, str:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 609
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v8           #str:Ljava/lang/String;
    :cond_2
    move-object p1, v6

    .line 612
    goto :goto_1
.end method

.method public static final getInterface()Landroid/safe/IMobileSafe;
    .locals 1

    .prologue
    .line 624
    const-string/jumbo v0, "mobile_safe"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/safe/IMobileSafe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;

    move-result-object v0

    return-object v0
.end method

.method private getNegativeButtonText(I)Ljava/lang/String;
    .locals 4
    .parameter "count"

    .prologue
    .line 616
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mNegativeButtonText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mNegativeButtonText:Ljava/lang/String;

    .line 620
    :cond_0
    const-string v0, "%s(%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/safe/MobileSafeService;->mNegativeButtonText:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPM()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/safe/MobileSafeService;->mPm:Landroid/content/pm/PackageManager;

    .line 367
    :cond_0
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 4
    .parameter "uid"

    .prologue
    .line 505
    invoke-direct {p0}, Landroid/safe/MobileSafeService;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, pkgNames:[Ljava/lang/String;
    const-string v1, "MobileSafeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgNames.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    array-length v1, v0

    if-lez v1, :cond_0

    .line 508
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 510
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getPermissionFile(I)Ljava/io/File;
    .locals 3
    .parameter "uid"

    .prologue
    .line 491
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/refuse/refuse-permission-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method static getPermissionFileDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/refuse"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 501
    :cond_0
    return-object v0
.end method

.method private readXml()V
    .locals 5

    .prologue
    .line 371
    invoke-static {}, Landroid/safe/MobileSafeService;->getPermissionFileDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 372
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Landroid/safe/MobileSafeService;->readXml(Ljava/io/File;)V

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v1           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private readXml(Ljava/io/File;)V
    .locals 16
    .parameter "file"

    .prologue
    .line 377
    const-string v13, "MobileSafeService"

    const-string v14, "+ readXml()"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v12, 0x0

    .line 379
    .local v12, uid:I
    const/4 v6, 0x0

    .line 380
    .local v6, pkgName:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v7, refusedPerms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/safe/Permission;>;"
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 384
    .local v8, str:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 385
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v4, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 389
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v13, 0x2

    if-eq v11, v13, :cond_1

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    .line 393
    :cond_1
    const/4 v13, 0x2

    if-eq v11, v13, :cond_2

    .line 394
    const-string v13, "MobileSafeService"

    const-string v14, "Error: No start tag found in stopped packages file\n"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #str:Ljava/io/FileInputStream;
    .end local v11           #type:I
    :goto_0
    return-void

    .line 398
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #str:Ljava/io/FileInputStream;
    .restart local v11       #type:I
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 400
    .local v3, outerDepth:I
    :cond_3
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_9

    const/4 v13, 0x3

    if-ne v11, v13, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v3, :cond_9

    .line 401
    :cond_4
    const/4 v13, 0x3

    if-eq v11, v13, :cond_3

    const/4 v13, 0x4

    if-eq v11, v13, :cond_3

    .line 405
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 406
    .local v10, tagName:Ljava/lang/String;
    const-string/jumbo v13, "package"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eqz v13, :cond_6

    .line 408
    const/4 v13, 0x0

    :try_start_1
    const-string/jumbo v14, "uid"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 409
    const-string v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    :goto_2
    const/4 v13, 0x0

    :try_start_2
    const-string/jumbo v14, "name"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 413
    const-string v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "pkgName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 431
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #str:Ljava/io/FileInputStream;
    .end local v10           #tagName:Ljava/lang/String;
    .end local v11           #type:I
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    if-lez v12, :cond_5

    .line 438
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/safe/MobileSafeService;->mUids:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/safe/MobileSafeService;->mPackages:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_5
    const-string v13, "MobileSafeService"

    const-string v14, "- readXml()"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 415
    .restart local v3       #outerDepth:I
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #str:Ljava/io/FileInputStream;
    .restart local v10       #tagName:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_6
    :try_start_3
    const-string v13, "item"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 416
    const/4 v13, 0x0

    const-string/jumbo v14, "name"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, permName:Ljava/lang/String;
    const-string v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "permName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v13, 0x0

    const-string/jumbo v14, "needConfirm"

    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, strNeedConfirm:Ljava/lang/String;
    const-string v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "strNeedConfirm="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string/jumbo v13, "true"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v2, 0x1

    .line 421
    .local v2, needConfirm:Z
    :goto_4
    new-instance v13, Landroid/safe/Permission;

    invoke-direct {v13, v5, v2}, Landroid/safe/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 433
    .end local v2           #needConfirm:Z
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #permName:Ljava/lang/String;
    .end local v8           #str:Ljava/io/FileInputStream;
    .end local v9           #strNeedConfirm:Ljava/lang/String;
    .end local v10           #tagName:Ljava/lang/String;
    .end local v11           #type:I
    :catch_1
    move-exception v1

    .line 434
    .local v1, e:Ljava/io/IOException;
    const-string v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 420
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #outerDepth:I
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #permName:Ljava/lang/String;
    .restart local v8       #str:Ljava/io/FileInputStream;
    .restart local v9       #strNeedConfirm:Ljava/lang/String;
    .restart local v10       #tagName:Ljava/lang/String;
    .restart local v11       #type:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 424
    .end local v5           #permName:Ljava/lang/String;
    .end local v9           #strNeedConfirm:Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown element under <refuse-permissions>: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 429
    .end local v10           #tagName:Ljava/lang/String;
    :cond_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 410
    .restart local v10       #tagName:Ljava/lang/String;
    :catch_2
    move-exception v13

    goto/16 :goto_2
.end method

.method private showConfirmDialog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "permName"
    .parameter "uid"
    .parameter "msg"

    .prologue
    .line 514
    iget-object v3, p0, Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 583
    :goto_0
    return-void

    .line 519
    :cond_0
    if-nez p3, :cond_1

    .line 520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "permission <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> is dangrous, whether or not grant it ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 549
    :cond_1
    new-instance v1, Landroid/safe/MobileSafeService$SafeAlertDialog;

    iget-object v3, p0, Landroid/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Landroid/safe/MobileSafeService$SafeAlertDialog;-><init>(Landroid/safe/MobileSafeService;Landroid/content/Context;)V

    .line 550
    .local v1, safeDlg:Landroid/safe/MobileSafeService$SafeAlertDialog;
    const v3, 0x10405a1

    invoke-virtual {v1, v3}, Landroid/safe/MobileSafeService$SafeAlertDialog;->setTitle(I)V

    .line 551
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/safe/MobileSafeService$SafeAlertDialog;->setIcon(I)V

    .line 552
    invoke-virtual {v1, p3}, Landroid/safe/MobileSafeService$SafeAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {v1}, Landroid/safe/MobileSafeService$SafeAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900b5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 555
    .local v2, v:Landroid/view/View;
    const v3, 0x1020352

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object v0, v3

    check-cast v0, Landroid/widget/CheckBox;

    .line 556
    .local v0, cb:Landroid/widget/CheckBox;
    const v3, 0x10405a5

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 558
    invoke-virtual {v1, v2}, Landroid/safe/MobileSafeService$SafeAlertDialog;->setView(Landroid/view/View;)V

    .line 559
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/safe/MobileSafeService$SafeAlertDialog;->setCancelable(Z)V

    .line 560
    const/4 v3, -0x1

    iget-object v4, p0, Landroid/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/safe/MobileSafeService$2;

    invoke-direct {v5, p0, v0, p1, p2}, Landroid/safe/MobileSafeService$2;-><init>(Landroid/safe/MobileSafeService;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/safe/MobileSafeService$SafeAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 569
    const/4 v3, -0x2

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Landroid/safe/MobileSafeService;->getNegativeButtonText(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/safe/MobileSafeService$3;

    invoke-direct {v5, p0, v0, p1, p2}, Landroid/safe/MobileSafeService$3;-><init>(Landroid/safe/MobileSafeService;Landroid/widget/CheckBox;Ljava/lang/String;I)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/safe/MobileSafeService$SafeAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 579
    invoke-virtual {v1}, Landroid/safe/MobileSafeService$SafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 580
    invoke-virtual {v1}, Landroid/safe/MobileSafeService$SafeAlertDialog;->show()V

    .line 582
    iput-object v1, p0, Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private writeXml(I)V
    .locals 12
    .parameter "uid"

    .prologue
    .line 447
    const-string v8, "MobileSafeService"

    const-string v9, "+ writeXml()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v8, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 451
    .local v5, refusedPerms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/safe/Permission;>;"
    invoke-static {p1}, Landroid/safe/MobileSafeService;->getPermissionFile(I)Ljava/io/File;

    move-result-object v1

    .line 453
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 454
    .local v2, fstr:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 456
    .local v7, str:Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 457
    .local v6, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v8, "utf-8"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 458
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 459
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 461
    const/4 v8, 0x0

    const-string/jumbo v9, "refuse-permissions"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    const/4 v8, 0x0

    const-string/jumbo v9, "package"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    const/4 v8, 0x0

    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    iget-object v8, p0, Landroid/safe/MobileSafeService;->mPackages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v9, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 466
    const/4 v8, 0x0

    const-string/jumbo v9, "package"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/safe/Permission;

    .line 469
    .local v4, permission:Landroid/safe/Permission;
    const/4 v8, 0x0

    const-string v9, "item"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 470
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    iget-object v10, v4, Landroid/safe/Permission;->name:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 471
    const/4 v9, 0x0

    const-string/jumbo v10, "needConfirm"

    iget-boolean v8, v4, Landroid/safe/Permission;->needConfirm:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "true"

    :goto_1
    invoke-interface {v6, v9, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    const/4 v8, 0x0

    const-string v9, "item"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v2           #fstr:Ljava/io/FileOutputStream;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #permission:Landroid/safe/Permission;
    .end local v6           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/io/IOException;
    const-string v8, "MobileSafeService"

    const-string v9, "Error: write refuse-permissions to xml. "

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v8, "MobileSafeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v0           #e:Ljava/io/IOException;
    :goto_2
    const-string v8, "MobileSafeService"

    const-string v9, "- writeXml()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 471
    .restart local v2       #fstr:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #permission:Landroid/safe/Permission;
    .restart local v6       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7       #str:Ljava/io/BufferedOutputStream;
    :cond_0
    :try_start_1
    const-string v8, "false"

    goto :goto_1

    .line 475
    .end local v4           #permission:Landroid/safe/Permission;
    :cond_1
    const/4 v8, 0x0

    const-string/jumbo v9, "refuse-permissions"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 479
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 480
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 481
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 168
    iget-object v1, p0, Landroid/safe/MobileSafeService;->mUids:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 169
    .local v0, uid:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 173
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/safe/MobileSafeService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 2
    .parameter "permName"
    .parameter "uid"

    .prologue
    .line 178
    iget-object v1, p0, Landroid/safe/MobileSafeService;->mCheckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Landroid/safe/MobileSafeService;->checkUidPermissionInternal(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkUidPermissionEx(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 2
    .parameter "permName"
    .parameter "uid"
    .parameter "extras"

    .prologue
    .line 185
    iget-object v1, p0, Landroid/safe/MobileSafeService;->mCheckLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/safe/MobileSafeService;->checkUidPermissionInternal(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteXml(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 328
    const-string v1, "MobileSafeService"

    const-string v2, "+ deleteXml"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Landroid/safe/MobileSafeService;->mPackages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, pkgName:Ljava/lang/String;
    const-string v1, "MobileSafeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v1, p0, Landroid/safe/MobileSafeService;->mUids:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {p1}, Landroid/safe/MobileSafeService;->getPermissionFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 334
    const-string v1, "MobileSafeService"

    const-string v2, "- deleteXml"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public grantPermission(Ljava/lang/String;I)V
    .locals 5
    .parameter "permName"
    .parameter "uid"

    .prologue
    .line 259
    const-string v3, "MobileSafeService"

    const-string v4, "+ grantPermission"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 262
    .local v2, permissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/safe/Permission;>;"
    if-nez v2, :cond_0

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/safe/Permission;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safe/Permission;

    .line 268
    .local v1, perm:Landroid/safe/Permission;
    iget-object v3, v1, Landroid/safe/Permission;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 274
    .end local v1           #perm:Landroid/safe/Permission;
    :cond_2
    iget-object v4, p0, Landroid/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 275
    :try_start_0
    invoke-direct {p0, p2}, Landroid/safe/MobileSafeService;->writeXml(I)V

    .line 276
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    const-string v3, "MobileSafeService"

    const-string v4, "- grantPermission"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public queryPermissionsByUid(I)Ljava/util/List;
    .locals 2
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/safe/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    const-string v0, "MobileSafeService"

    const-string/jumbo v1, "queryPermissionsByUid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public registerClient(Landroid/safe/IMobileSafeClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 339
    const-string v0, "MobileSafeService"

    const-string v1, "+ registerClient"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object p1, p0, Landroid/safe/MobileSafeService;->mClient:Landroid/safe/IMobileSafeClient;

    .line 342
    :try_start_0
    invoke-interface {p1}, Landroid/safe/IMobileSafeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/safe/MobileSafeService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    const-string v0, "MobileSafeService"

    const-string v1, "- registerClient"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public revokePermission(Ljava/lang/String;IZZ)V
    .locals 11
    .parameter "permName"
    .parameter "uid"
    .parameter "needConfirm"
    .parameter "saveToFile"

    .prologue
    .line 282
    const-string v9, "MobileSafeService"

    const-string v10, "+ revokePermission"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v9, p0, Landroid/safe/MobileSafeService;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 285
    .local v8, pkg_name:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    .local v0, callingIdentity:J
    invoke-direct {p0, p2}, Landroid/safe/MobileSafeService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, pkgName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    iget-object v9, p0, Landroid/safe/MobileSafeService;->mUids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v9, p0, Landroid/safe/MobileSafeService;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v0           #callingIdentity:J
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 294
    .local v5, permissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/safe/Permission;>;"
    if-nez v5, :cond_3

    .line 295
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v6, perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/safe/Permission;>;"
    new-instance v9, Landroid/safe/Permission;

    invoke-direct {v9, p1, p3}, Landroid/safe/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v9, p0, Landroid/safe/MobileSafeService;->mPermissions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v6           #perms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/safe/Permission;>;"
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 319
    iget-object v10, p0, Landroid/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v10

    .line 320
    :try_start_0
    invoke-direct {p0, p2}, Landroid/safe/MobileSafeService;->writeXml(I)V

    .line 321
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_2
    const-string v9, "MobileSafeService"

    const-string v10, "- revokePermission"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 302
    :cond_3
    const/4 v2, 0x0

    .line 303
    .local v2, exist:Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 304
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/safe/Permission;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 305
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/safe/Permission;

    .line 306
    .local v4, perm:Landroid/safe/Permission;
    iget-object v9, v4, Landroid/safe/Permission;->name:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 307
    iput-boolean p3, v4, Landroid/safe/Permission;->needConfirm:Z

    .line 308
    const/4 v2, 0x1

    .line 313
    .end local v4           #perm:Landroid/safe/Permission;
    :cond_5
    if-nez v2, :cond_1

    .line 314
    new-instance v9, Landroid/safe/Permission;

    invoke-direct {v9, p1, p3}, Landroid/safe/Permission;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v2           #exist:Z
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/safe/Permission;>;"
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method
