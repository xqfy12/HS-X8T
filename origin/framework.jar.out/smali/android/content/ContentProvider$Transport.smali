.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field private rperm2:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/ContentProvider;

.field private wperm2:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 184
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 186
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 187
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private checkReadSecurityPermission()I
    .locals 3

    .prologue
    .line 581
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    :cond_0
    :try_start_0
    const-string/jumbo v1, "mobile_safe"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/safe/IMobileSafe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;

    move-result-object v0

    .line 586
    .local v0, ims:Landroid/safe/IMobileSafe;
    if-eqz v0, :cond_1

    .line 587
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/safe/IMobileSafe;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 592
    .end local v0           #ims:Landroid/safe/IMobileSafe;
    :goto_0
    return v1

    .line 589
    :catch_0
    move-exception v1

    .line 592
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkReadSecurityPermissionEx(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    .line 596
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    const-string v3, "android.permission.READ_SMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    const-string v3, "android.permission.READ_CALL_LOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    :cond_0
    :try_start_0
    const-string/jumbo v2, "mobile_safe"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/safe/IMobileSafe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;

    move-result-object v1

    .line 601
    .local v1, ims:Landroid/safe/IMobileSafe;
    if-eqz v1, :cond_2

    .line 602
    if-nez p1, :cond_1

    .line 603
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/safe/IMobileSafe;->checkUidPermissionEx(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v2

    .line 614
    .end local v1           #ims:Landroid/safe/IMobileSafe;
    :goto_0
    return v2

    .line 605
    .restart local v1       #ims:Landroid/safe/IMobileSafe;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 606
    .local v0, extras:Landroid/os/Bundle;
    const-string/jumbo v2, "ms_extra_type"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    const-string/jumbo v2, "ms_extra_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 608
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/safe/IMobileSafe;->checkUidPermissionEx(Ljava/lang/String;ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 611
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #ims:Landroid/safe/IMobileSafe;
    :catch_0
    move-exception v2

    .line 614
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkWriteSecurityPermissionEx(Landroid/net/Uri;)I
    .locals 4
    .parameter "uri"

    .prologue
    .line 558
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->wperm2:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->wperm2:Ljava/lang/String;

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->wperm2:Ljava/lang/String;

    const-string v3, "android.permission.WRITE_SMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->wperm2:Ljava/lang/String;

    const-string v3, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    :cond_0
    :try_start_0
    const-string/jumbo v2, "mobile_safe"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/safe/IMobileSafe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;

    move-result-object v1

    .line 563
    .local v1, ims:Landroid/safe/IMobileSafe;
    if-eqz v1, :cond_2

    .line 564
    if-nez p1, :cond_1

    .line 565
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->wperm2:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/safe/IMobileSafe;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    .line 576
    .end local v1           #ims:Landroid/safe/IMobileSafe;
    :goto_0
    return v2

    .line 567
    .restart local v1       #ims:Landroid/safe/IMobileSafe;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, extras:Landroid/os/Bundle;
    const-string/jumbo v2, "ms_extra_type"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    const-string/jumbo v2, "ms_extra_uri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->wperm2:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/safe/IMobileSafe;->checkUidPermissionEx(Ljava/lang/String;ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 573
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #ims:Landroid/safe/IMobileSafe;
    :catch_0
    move-exception v2

    .line 576
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 401
    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 402
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .parameter "callingPkg"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermissionInner(Landroid/net/Uri;)V

    .line 414
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceReadPermissionInner(Landroid/net/Uri;)V
    .locals 19
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 422
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 423
    .local v12, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 424
    .local v15, uid:I
    const/4 v9, 0x0

    .line 426
    .local v9, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 473
    :cond_0
    return-void

    .line 430
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, componentPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/ContentProvider$Transport;->rperm2:Ljava/lang/String;

    .line 435
    if-eqz v4, :cond_2

    .line 436
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 439
    move-object v9, v4

    .line 445
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 447
    .local v2, allowDefaultRead:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 448
    .local v14, pps:[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 449
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 450
    .local v10, path:Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 451
    .local v13, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v11

    .line 452
    .local v11, pathPerm:Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 453
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 458
    const/4 v2, 0x0

    .line 459
    move-object v9, v11

    .line 450
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 445
    .end local v2           #allowDefaultRead:Z
    .end local v3           #arr$:[Landroid/content/pm/PathPermission;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pathPerm:Ljava/lang/String;
    .end local v13           #pp:Landroid/content/pm/PathPermission;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 467
    .restart local v2       #allowDefaultRead:Z
    .restart local v14       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 471
    .end local v2           #allowDefaultRead:Z
    .end local v4           #componentPerm:Ljava/lang/String;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    .local v6, failReason:Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: reading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 476
    .end local v6           #failReason:Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .parameter "callingPkg"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermissionInner(Landroid/net/Uri;)V

    .line 486
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceWritePermissionInner(Landroid/net/Uri;)V
    .locals 19
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 494
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 495
    .local v12, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 496
    .local v15, uid:I
    const/4 v9, 0x0

    .line 498
    .local v9, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 545
    :cond_0
    return-void

    .line 502
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, componentPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/ContentProvider$Transport;->wperm2:Ljava/lang/String;

    .line 507
    if-eqz v4, :cond_2

    .line 508
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 511
    move-object v9, v4

    .line 517
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 519
    .local v2, allowDefaultWrite:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 520
    .local v14, pps:[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, path:Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 523
    .local v13, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v11

    .line 524
    .local v11, pathPerm:Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 525
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 530
    const/4 v2, 0x0

    .line 531
    move-object v9, v11

    .line 522
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 517
    .end local v2           #allowDefaultWrite:Z
    .end local v3           #arr$:[Landroid/content/pm/PathPermission;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pathPerm:Ljava/lang/String;
    .end local v13           #pp:Landroid/content/pm/PathPermission;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 539
    .restart local v2       #allowDefaultWrite:Z
    .restart local v14       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 543
    .end local v2           #allowDefaultWrite:Z
    .end local v4           #componentPerm:Ljava/lang/String;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, failReason:Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: writing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 548
    .end local v6           #failReason:Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .parameter "callingPkg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 261
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 262
    .local v1, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    new-instance v2, Landroid/content/OperationApplicationException;

    const-string v3, "App op not allowed"

    invoke-direct {v2, v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 268
    :cond_1
    sget-boolean v3, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/content/ContentProvider$Transport;->checkReadSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    .end local v1           #operation:Landroid/content/ContentProviderOperation;
    :goto_0
    return-object v2

    .line 276
    .restart local v1       #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    new-instance v2, Landroid/content/OperationApplicationException;

    const-string v3, "App op not allowed"

    invoke-direct {v2, v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 282
    :cond_3
    sget-boolean v3, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/content/ContentProvider$Transport;->checkWriteSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 290
    .end local v1           #operation:Landroid/content/ContentProviderOperation;
    :cond_4
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    goto :goto_0
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_2

    .line 249
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkWriteSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_0

    .line 254
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "callingPkg"
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->callFromPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_2

    .line 300
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkWriteSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 233
    :cond_0
    sget-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkWriteSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 352
    if-eqz p3, :cond_1

    const/16 v1, 0x77

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 353
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_2

    .line 354
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkWriteSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :cond_1
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_2

    .line 361
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkReadSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_0

    .line 367
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 329
    if-eqz p3, :cond_1

    const/16 v1, 0x77

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 330
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_2

    .line 331
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkWriteSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_2

    .line 338
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkReadSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_0

    .line 344
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 383
    const-string/jumbo v0, "r"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 385
    sget-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkReadSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 7
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 212
    :cond_0
    sget-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkReadSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x0

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "callingPkg"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_2

    .line 316
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->checkWriteSecurityPermissionEx(Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_0

    .line 321
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
