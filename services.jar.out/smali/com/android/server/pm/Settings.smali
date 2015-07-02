.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$BaiduInjector;
    }
.end annotation


# static fields
.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"


# instance fields
.field private isChargeMode:Z

.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSdkPlatform:I

.field mInternalSdkPlatform:I

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2690
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "SYSTEM"

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "DEBUGGABLE"

    aput-object v2, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "HAS_CODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PERSISTENT"

    aput-object v2, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x9

    const-string v2, "FACTORY_TEST"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ALLOW_TASK_REPARENTING"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ALLOW_CLEAR_USER_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "UPDATED_SYSTEM_APP"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x11

    const-string v2, "TEST_ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "VM_SAFE_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ALLOW_BACKUP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "KILL_AFTER_RESTORE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "RESTORE_ANY_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/high16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "LARGE_HEAP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "FORWARD_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "CANT_SAVE_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 189
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .parameter "context"
    .parameter "dataDir"

    .prologue
    const/4 v2, -0x1

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/Settings;->isChargeMode:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 192
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mContext:Landroid/content/Context;

    .line 193
    new-instance v0, Ljava/io/File;

    const-string v1, "system"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 199
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 201
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 203
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-stopped.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 204
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-stopped-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 206
    const-string v0, "ro.bootmode"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/Settings;->isChargeMode:Z

    .line 208
    return-void
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 3
    .parameter "p"
    .parameter "name"
    .parameter "sharedUser"

    .prologue
    const/4 v2, 0x6

    .line 595
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    if-eqz p3, :cond_1

    .line 597
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p3, :cond_2

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 602
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 611
    :cond_0
    :goto_0
    iget-object v0, p3, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 613
    iget v0, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 615
    :cond_1
    return-void

    .line 603
    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "uid"
    .parameter "obj"
    .parameter "name"

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x0

    .line 699
    const/16 v3, 0x4e1f

    if-le p1, v3, :cond_0

    .line 726
    :goto_0
    return v2

    .line 703
    :cond_0
    const/16 v3, 0x2710

    if-lt p1, v3, :cond_3

    .line 704
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 705
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 706
    .local v1, index:I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 707
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 726
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 718
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private compToString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2560
    .local p1, cmp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[]"

    goto :goto_0
.end method

.method private getAllUsers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2669
    .local v0, id:J
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2673
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2675
    :goto_0
    return-object v2

    .line 2670
    :catch_0
    move-exception v2

    .line 2673
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2675
    const/4 v2, 0x0

    goto :goto_0

    .line 2673
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;
    .locals 18
    .parameter "name"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "vc"
    .parameter "hmctcode"
    .parameter "pkgFlags"
    .parameter "installUser"
    .parameter "add"
    .parameter "allowInstall"

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 380
    .local v3, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1

    .line 381
    iget-object v4, v3, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 383
    iget v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 387
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to update system app code path from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_0
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p4

    if-eq v4, v0, :cond_5

    .line 404
    const/4 v5, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " shared user changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "; replacing with new"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 410
    const/4 v3, 0x0

    .line 420
    :cond_1
    :goto_3
    if-nez v3, :cond_10

    .line 421
    if-eqz p2, :cond_6

    .line 423
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3           #p:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p9

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V

    .line 429
    .restart local v3       #p:Lcom/android/server/pm/PackageSetting;
    iget-object v14, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 430
    .local v14, s:Lcom/android/server/pm/PackageSignatures;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 431
    iput-object v14, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 432
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 433
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 434
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 438
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 507
    .end local v14           #s:Lcom/android/server/pm/PackageSignatures;
    :goto_4
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gez v4, :cond_e

    .line 508
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " could not be assigned a valid uid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 510
    const/4 v4, 0x0

    .line 537
    :goto_5
    return-object v4

    .line 392
    :cond_2
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " codePath changed from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; Retaining data and using new"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p7

    iput-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_0

    .line 404
    :cond_3
    const-string v4, "<nothing>"

    goto/16 :goto_1

    :cond_4
    const-string v4, "<nothing>"

    goto/16 :goto_2

    .line 412
    :cond_5
    and-int/lit8 v4, p10, 0x1

    if-eqz v4, :cond_1

    .line 416
    iget v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    goto/16 :goto_3

    .line 440
    :cond_6
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3           #p:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p9

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V

    .line 442
    .restart local v3       #p:Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 443
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 445
    and-int/lit8 v4, p10, 0x1

    if-nez v4, :cond_9

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v17

    .line 452
    .local v17, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v17, :cond_9

    if-eqz p13, :cond_9

    .line 453
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 460
    .local v15, user:Landroid/content/pm/UserInfo;
    if-eqz p11, :cond_7

    invoke-virtual/range {p11 .. p11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    invoke-virtual/range {p11 .. p11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget v5, v15, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_8

    :cond_7
    const/4 v6, 0x1

    .line 463
    .local v6, installed:Z
    :goto_7
    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 468
    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_6

    .line 460
    .end local v6           #installed:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_7

    .line 472
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #user:Landroid/content/pm/UserInfo;
    .end local v17           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    move/from16 v2, p13

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/pm/Settings$BaiduInjector;->setBaiduStopped(Lcom/android/server/pm/Settings;Landroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;Z)V

    if-eqz p4, :cond_a

    .line 473
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_4

    .line 476
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 477
    .local v12, dis:Lcom/android/server/pm/PackageSetting;
    if-eqz v12, :cond_d

    .line 482
    iget-object v4, v12, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_b

    .line 483
    iget-object v5, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v12, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Signature;

    iput-object v4, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 485
    :cond_b
    iget v4, v12, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 487
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v12, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v17

    .line 490
    .restart local v17       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v17, :cond_c

    .line 491
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 492
    .restart local v15       #user:Landroid/content/pm/UserInfo;
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 493
    .local v16, userId:I
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Ljava/util/HashSet;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Ljava/util/HashSet;I)V

    .line 495
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Ljava/util/HashSet;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Ljava/util/HashSet;I)V

    goto :goto_8

    .line 500
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #user:Landroid/content/pm/UserInfo;
    .end local v16           #userId:I
    :cond_c
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v3, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 503
    .end local v17           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_4

    .line 512
    .end local v12           #dis:Lcom/android/server/pm/PackageSetting;
    :cond_e
    if-eqz p12, :cond_f

    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    :cond_f
    move-object v4, v3

    .line 537
    goto/16 :goto_5

    .line 518
    :cond_10
    if-eqz p11, :cond_f

    if-eqz p13, :cond_f

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v17

    .line 523
    .restart local v17       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v17, :cond_f

    .line 524
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_11
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 525
    .restart local v15       #user:Landroid/content/pm/UserInfo;
    invoke-virtual/range {p11 .. p11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_12

    invoke-virtual/range {p11 .. p11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget v5, v15, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_11

    .line 527
    :cond_12
    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    .line 528
    .restart local v6       #installed:Z
    if-nez v6, :cond_11

    .line 529
    const/4 v4, 0x1

    iget v5, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 530
    iget v4, v15, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_9
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 773
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 769
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-restrictions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 2527
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2528
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2529
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2530
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2531
    add-int/lit16 v2, v1, 0x2710

    .line 2541
    :goto_1
    return v2

    .line 2528
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2536
    :cond_1
    const/16 v2, 0x270f

    if-le v0, v2, :cond_2

    .line 2537
    const/4 v2, -0x1

    goto :goto_1

    .line 2540
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    add-int/lit16 v2, v0, 0x2710

    goto :goto_1
.end method

.method static final printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3
    .parameter "pw"
    .parameter "val"
    .parameter "spec"

    .prologue
    .line 2679
    const-string v2, "[ "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2680
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 2681
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2682
    .local v1, mask:I
    and-int v2, p1, v1

    if-eqz v2, :cond_0

    .line 2683
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2684
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2680
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2687
    .end local v1           #mask:I
    :cond_1
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2688
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 973
    const/4 v1, 0x0

    .line 975
    .local v1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 978
    .local v2, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    if-ne v4, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 980
    :cond_1
    if-eq v4, v7, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 984
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 985
    .local v3, tagName:Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 986
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, componentName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 988
    if-nez v1, :cond_2

    .line 989
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 991
    .restart local v1       #components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    .end local v0           #componentName:Ljava/lang/String;
    .end local v3           #tagName:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 25
    .parameter "service"
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1873
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 1876
    .local v14, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v14, :cond_e

    .line 1877
    :cond_1
    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1881
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1882
    .local v19, tagName:Ljava/lang/String;
    const-string v22, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1883
    new-instance v20, Lcom/android/server/pm/PreferredActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1884
    .local v20, tmpPa:Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_c

    .line 1893
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 1894
    .local v7, cn:Landroid/content/ComponentName;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1895
    .local v12, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 1896
    .local v8, flags:I
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PreferredActivity;->getAction(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PreferredActivity;->countCategories()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_3

    .line 1898
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PreferredActivity;->getCategory(I)Ljava/lang/String;

    move-result-object v6

    .line 1899
    .local v6, cat:Ljava/lang/String;
    const-string v22, "android.intent.category.DEFAULT"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1900
    const/high16 v22, 0x1

    or-int v8, v8, v22

    .line 1897
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1902
    :cond_2
    invoke-virtual {v12, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1905
    .end local v6           #cat:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PreferredActivity;->countDataSchemes()I

    move-result v22

    if-lez v22, :cond_8

    .line 1906
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1907
    .local v5, builder:Landroid/net/Uri$Builder;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1908
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PreferredActivity;->countDataAuthorities()I

    move-result v22

    if-lez v22, :cond_4

    .line 1909
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PreferredActivity;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v4

    .line 1910
    .local v4, auth:Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 1911
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1914
    .end local v4           #auth:Landroid/content/IntentFilter$AuthorityEntry;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PreferredActivity;->countDataPaths()I

    move-result v22

    if-lez v22, :cond_5

    .line 1915
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PreferredActivity;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v16

    .line 1916
    .local v16, path:Landroid/os/PatternMatcher;
    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1918
    .end local v16           #path:Landroid/os/PatternMatcher;
    :cond_5
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1922
    .end local v5           #builder:Landroid/net/Uri$Builder;
    :cond_6
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v8, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v17

    .line 1926
    .local v17, ri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v13, 0x0

    .line 1927
    .local v13, match:I
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 1928
    const/4 v9, 0x0

    .line 1929
    .local v9, haveAct:Z
    const/4 v10, 0x0

    .line 1930
    .local v10, haveNonSys:Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v18, v0

    .line 1931
    .local v18, set:[Landroid/content/ComponentName;
    const/4 v11, 0x0

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_7

    .line 1932
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1933
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    new-instance v22, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v22, v18, v11

    .line 1934
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-nez v22, :cond_9

    .line 1940
    const/4 v10, 0x1

    .line 1953
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    :cond_7
    if-eqz v9, :cond_b

    if-nez v10, :cond_b

    .line 1954
    new-instance v15, Lcom/android/server/pm/PreferredActivity;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v15, v0, v13, v1, v2}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1956
    .local v15, pa:Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto/16 :goto_0

    .line 1919
    .end local v9           #haveAct:Z
    .end local v10           #haveNonSys:Z
    .end local v13           #match:I
    .end local v15           #pa:Lcom/android/server/pm/PreferredActivity;
    .end local v17           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18           #set:[Landroid/content/ComponentName;
    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PreferredActivity;->countDataTypes()I

    move-result v22

    if-lez v22, :cond_6

    .line 1920
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PreferredActivity;->getDataType(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1942
    .restart local v3       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v9       #haveAct:Z
    .restart local v10       #haveNonSys:Z
    .restart local v13       #match:I
    .restart local v17       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18       #set:[Landroid/content/ComponentName;
    :cond_9
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1946
    const/4 v9, 0x1

    .line 1947
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v22

    iget v13, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1931
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 1957
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    :cond_b
    if-nez v10, :cond_0

    .line 1958
    const-string v22, "PackageSettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No component found for default preferred activity "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1963
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v8           #flags:I
    .end local v9           #haveAct:Z
    .end local v10           #haveNonSys:Z
    .end local v11           #i:I
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #match:I
    .end local v17           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18           #set:[Landroid/content/ComponentName;
    :cond_c
    const/16 v22, 0x5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in package manager settings: <preferred-activity> "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " at "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1969
    .end local v20           #tmpPa:Lcom/android/server/pm/PreferredActivity;
    :cond_d
    const/16 v22, 0x5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown element under <preferred-activities>: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1971
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1974
    .end local v19           #tagName:Ljava/lang/String;
    :cond_e
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2353
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2356
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2357
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2361
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2362
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2363
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2364
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2365
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    .line 2375
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2367
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2372
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2377
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 24
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2040
    const/4 v5, 0x0

    const-string v6, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2041
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "realName"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2042
    .local v4, realName:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "codePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2043
    .local v11, codePathStr:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "resourcePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2044
    .local v15, resourcePathStr:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "nativeLibraryPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2045
    .local v7, nativeLibraryPathStr:Ljava/lang/String;
    if-nez v15, :cond_0

    .line 2046
    move-object v15, v11

    .line 2048
    :cond_0
    const/4 v5, 0x0

    const-string v6, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2049
    .local v22, version:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2050
    .local v8, versionCode:I
    if-eqz v22, :cond_1

    .line 2052
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 2057
    :cond_1
    :goto_0
    const/4 v5, 0x0

    const-string v6, "hmctCode"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2058
    .local v12, hmctString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2059
    .local v10, hmctCode:I
    if-eqz v12, :cond_2

    .line 2061
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    .line 2066
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 2067
    .local v9, pkgFlags:I
    or-int/lit8 v9, v9, 0x1

    .line 2068
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V

    .line 2070
    .local v2, ps:Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    const-string v6, "ft"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2071
    .local v20, timeStampStr:Ljava/lang/String;
    if-eqz v20, :cond_9

    .line 2073
    const/16 v5, 0x10

    :try_start_2
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    .line 2074
    .local v18, timeStamp:J
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2087
    .end local v18           #timeStamp:J
    :cond_3
    :goto_2
    const/4 v5, 0x0

    const-string v6, "it"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2088
    if-eqz v20, :cond_4

    .line 2090
    const/16 v5, 0x10

    :try_start_3
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2094
    :cond_4
    :goto_3
    const/4 v5, 0x0

    const-string v6, "ut"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2095
    if-eqz v20, :cond_5

    .line 2097
    const/16 v5, 0x10

    :try_start_4
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2101
    :cond_5
    :goto_4
    const/4 v5, 0x0

    const-string v6, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2102
    .local v13, idStr:Ljava/lang/String;
    if-eqz v13, :cond_a

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_5
    iput v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2103
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v5, :cond_6

    .line 2104
    const/4 v5, 0x0

    const-string v6, "sharedUserId"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2105
    .local v16, sharedIdStr:Ljava/lang/String;
    if-eqz v16, :cond_b

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_6
    iput v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2107
    .end local v16           #sharedIdStr:Ljava/lang/String;
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 2110
    .local v14, outerDepth:I
    :cond_7
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v5, 0x1

    move/from16 v0, v21

    if-eq v0, v5, :cond_d

    const/4 v5, 0x3

    move/from16 v0, v21

    if-ne v0, v5, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v14, :cond_d

    .line 2111
    :cond_8
    const/4 v5, 0x3

    move/from16 v0, v21

    if-eq v0, v5, :cond_7

    const/4 v5, 0x4

    move/from16 v0, v21

    if-eq v0, v5, :cond_7

    .line 2115
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 2116
    .local v17, tagName:Ljava/lang/String;
    const-string v5, "perms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2117
    iget-object v5, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_7

    .line 2078
    .end local v13           #idStr:Ljava/lang/String;
    .end local v14           #outerDepth:I
    .end local v17           #tagName:Ljava/lang/String;
    .end local v21           #type:I
    :cond_9
    const/4 v5, 0x0

    const-string v6, "ts"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2079
    if-eqz v20, :cond_3

    .line 2081
    :try_start_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 2082
    .restart local v18       #timeStamp:J
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 2083
    .end local v18           #timeStamp:J
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 2102
    .restart local v13       #idStr:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 2105
    .restart local v16       #sharedIdStr:Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    .line 2119
    .end local v16           #sharedIdStr:Ljava/lang/String;
    .restart local v14       #outerDepth:I
    .restart local v17       #tagName:Ljava/lang/String;
    .restart local v21       #type:I
    :cond_c
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown element under <updated-package>: "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2121
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

    .line 2124
    .end local v17           #tagName:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    return-void

    .line 2053
    .end local v2           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v9           #pkgFlags:I
    .end local v10           #hmctCode:I
    .end local v12           #hmctString:Ljava/lang/String;
    .end local v13           #idStr:Ljava/lang/String;
    .end local v14           #outerDepth:I
    .end local v20           #timeStampStr:Ljava/lang/String;
    .end local v21           #type:I
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 2062
    .restart local v10       #hmctCode:I
    .restart local v12       #hmctString:Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1

    .line 2098
    .restart local v2       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #pkgFlags:I
    .restart local v20       #timeStampStr:Ljava/lang/String;
    :catch_3
    move-exception v5

    goto/16 :goto_4

    .line 2091
    :catch_4
    move-exception v5

    goto/16 :goto_3

    .line 2075
    :catch_5
    move-exception v5

    goto/16 :goto_2
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2381
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2384
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2385
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2389
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2390
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2391
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2392
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2393
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    .line 2403
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2395
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2400
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2405
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .locals 8
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, outPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2470
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 2473
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 2474
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 2478
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2479
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2480
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2481
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2482
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2492
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2484
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2489
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 2494
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "parser"
    .parameter "ns"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 1977
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1979
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1989
    .end local p4
    :goto_0
    return p4

    .line 1982
    .restart local p4
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p4

    goto :goto_0

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 36
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2128
    const/16 v23, 0x0

    .line 2129
    .local v23, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2130
    .local v4, realName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 2131
    .local v18, idStr:Ljava/lang/String;
    const/16 v27, 0x0

    .line 2132
    .local v27, sharedIdStr:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2133
    .local v12, codePathStr:Ljava/lang/String;
    const/16 v26, 0x0

    .line 2134
    .local v26, resourcePathStr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2135
    .local v7, nativeLibraryPathStr:Ljava/lang/String;
    const/16 v28, 0x0

    .line 2136
    .local v28, systemStr:Ljava/lang/String;
    const/16 v20, 0x0

    .line 2137
    .local v20, installerPackageName:Ljava/lang/String;
    const/16 v34, 0x0

    .line 2138
    .local v34, uidError:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2139
    .local v10, pkgFlags:I
    const-wide/16 v30, 0x0

    .line 2140
    .local v30, timeStamp:J
    const-wide/16 v15, 0x0

    .line 2141
    .local v15, firstInstallTime:J
    const-wide/16 v21, 0x0

    .line 2142
    .local v21, lastUpdateTime:J
    const/16 v25, 0x0

    .line 2143
    .local v25, packageSetting:Lcom/android/server/pm/PackageSettingBase;
    const/16 v35, 0x0

    .line 2144
    .local v35, version:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2145
    .local v9, versionCode:I
    const/16 v17, 0x0

    .line 2146
    .local v17, hmctCodeString:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2148
    .local v11, hmctCode:I
    const/4 v3, 0x0

    :try_start_0
    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2149
    const/4 v3, 0x0

    const-string v5, "realName"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2150
    const/4 v3, 0x0

    const-string v5, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2151
    const/4 v3, 0x0

    const-string v5, "uidError"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2152
    const/4 v3, 0x0

    const-string v5, "sharedUserId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2153
    const/4 v3, 0x0

    const-string v5, "codePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2154
    const/4 v3, 0x0

    const-string v5, "resourcePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2155
    const/4 v3, 0x0

    const-string v5, "nativeLibraryPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2156
    const/4 v3, 0x0

    const-string v5, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2157
    const/4 v3, 0x0

    const-string v5, "hmctCode"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v17

    .line 2158
    if-eqz v35, :cond_0

    .line 2160
    :try_start_1
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    .line 2165
    :cond_0
    :goto_0
    if-eqz v17, :cond_1

    .line 2167
    :try_start_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v11

    .line 2173
    :cond_1
    :goto_1
    const/4 v3, 0x0

    :try_start_3
    const-string v5, "installer"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2175
    const/4 v3, 0x0

    const-string v5, "flags"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v28

    .line 2176
    if-eqz v28, :cond_a

    .line 2178
    :try_start_4
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    .line 2193
    :goto_2
    const/4 v3, 0x0

    :try_start_5
    const-string v5, "ft"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v32

    .line 2194
    .local v32, timeStampStr:Ljava/lang/String;
    if-eqz v32, :cond_d

    .line 2196
    const/16 v3, 0x10

    :try_start_6
    move-object/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-wide v30

    .line 2208
    :cond_2
    :goto_3
    const/4 v3, 0x0

    :try_start_7
    const-string v5, "it"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v32

    .line 2209
    if-eqz v32, :cond_3

    .line 2211
    const/16 v3, 0x10

    :try_start_8
    move-object/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-wide v15

    .line 2215
    :cond_3
    :goto_4
    const/4 v3, 0x0

    :try_start_9
    const-string v5, "ut"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v32

    .line 2216
    if-eqz v32, :cond_4

    .line 2218
    const/16 v3, 0x10

    :try_start_a
    move-object/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_8

    move-result-wide v21

    .line 2225
    :cond_4
    :goto_5
    if-eqz v18, :cond_e

    :try_start_b
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2226
    .local v8, userId:I
    :goto_6
    if-nez v26, :cond_5

    .line 2227
    move-object/from16 v26, v12

    .line 2229
    :cond_5
    if-eqz v4, :cond_6

    .line 2230
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 2232
    :cond_6
    if-nez v23, :cond_f

    .line 2233
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_9

    move-object/from16 v2, v25

    .line 2285
    .end local v8           #userId:I
    .end local v25           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .end local v32           #timeStampStr:Ljava/lang/String;
    .local v2, packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :goto_7
    if-eqz v2, :cond_1f

    .line 2286
    const-string v3, "true"

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 2287
    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 2288
    iput-object v7, v2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 2290
    const/4 v3, 0x0

    const-string v5, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2291
    .local v14, enabledStr:Ljava/lang/String;
    if-eqz v14, :cond_19

    .line 2293
    :try_start_c
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_1

    .line 2312
    :goto_8
    const/4 v3, 0x0

    const-string v5, "installStatus"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2313
    .local v19, installStatusStr:Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 2314
    const-string v3, "false"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2315
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 2321
    :cond_7
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    .line 2324
    .local v24, outerDepth:I
    :cond_8
    :goto_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v33

    .local v33, type:I
    const/4 v3, 0x1

    move/from16 v0, v33

    if-eq v0, v3, :cond_20

    const/4 v3, 0x3

    move/from16 v0, v33

    if-ne v0, v3, :cond_9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v24

    if-le v3, v0, :cond_20

    .line 2325
    :cond_9
    const/4 v3, 0x3

    move/from16 v0, v33

    if-eq v0, v3, :cond_8

    const/4 v3, 0x4

    move/from16 v0, v33

    if-eq v0, v3, :cond_8

    .line 2329
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 2331
    .local v29, tagName:Ljava/lang/String;
    const-string v3, "disabled-components"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2332
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_a

    .line 2183
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v19           #installStatusStr:Ljava/lang/String;
    .end local v24           #outerDepth:I
    .end local v29           #tagName:Ljava/lang/String;
    .end local v33           #type:I
    .restart local v25       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_a
    const/4 v3, 0x0

    :try_start_d
    const-string v5, "system"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2184
    if-eqz v28, :cond_c

    .line 2185
    const-string v3, "true"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_b
    or-int/2addr v10, v3

    goto/16 :goto_2

    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .line 2190
    :cond_c
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2200
    .restart local v32       #timeStampStr:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    const-string v5, "ts"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_9

    move-result-object v32

    .line 2201
    if-eqz v32, :cond_2

    .line 2203
    :try_start_e
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_6

    move-result-wide v30

    goto/16 :goto_3

    .line 2225
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 2236
    .restart local v8       #userId:I
    :cond_f
    if-nez v12, :cond_10

    .line 2237
    const/4 v3, 0x5

    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v25

    .end local v25           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    .line 2240
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v25       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_10
    if-lez v8, :cond_12

    .line 2241
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIII)Lcom/android/server/pm/PackageSetting;
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_9

    move-result-object v2

    .line 2247
    .end local v25           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    if-nez v2, :cond_11

    .line 2248
    const/4 v3, 0x6

    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure adding uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while parsing settings at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_7

    .line 2280
    :catch_0
    move-exception v13

    .line 2281
    .end local v8           #userId:I
    .end local v32           #timeStampStr:Ljava/lang/String;
    .local v13, e:Ljava/lang/NumberFormatException;
    :goto_c
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 2252
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    .restart local v32       #timeStampStr:Ljava/lang/String;
    :cond_11
    :try_start_11
    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 2253
    iput-wide v15, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 2254
    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_7

    .line 2256
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v25       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_12
    if-eqz v27, :cond_15

    .line 2257
    if-eqz v27, :cond_13

    :try_start_12
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2258
    :goto_d
    if-lez v8, :cond_14

    .line 2259
    new-instance v2, Lcom/android/server/pm/PendingPackage;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIII)V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_9

    .line 2262
    .end local v25           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :try_start_13
    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 2263
    iput-wide v15, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 2264
    move-wide/from16 v0, v21

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 2265
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PendingPackage;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_7

    .line 2257
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v25       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_13
    const/4 v8, 0x0

    goto :goto_d

    .line 2270
    :cond_14
    const/4 v3, 0x5

    :try_start_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad sharedId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v25

    .end local v25           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    .line 2276
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v25       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :cond_15
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_9

    move-object/from16 v2, v25

    .end local v25           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_7

    .line 2294
    .end local v8           #userId:I
    .end local v32           #timeStampStr:Ljava/lang/String;
    .restart local v14       #enabledStr:Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 2295
    .restart local v13       #e:Ljava/lang/NumberFormatException;
    const-string v3, "true"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2296
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 2297
    :cond_16
    const-string v3, "false"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2298
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 2299
    :cond_17
    const-string v3, "default"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2300
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 2302
    :cond_18
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad enabled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 2309
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :cond_19
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 2317
    .restart local v19       #installStatusStr:Ljava/lang/String;
    :cond_1a
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    goto/16 :goto_9

    .line 2333
    .restart local v24       #outerDepth:I
    .restart local v29       #tagName:Ljava/lang/String;
    .restart local v33       #type:I
    :cond_1b
    const-string v3, "enabled-components"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2334
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_a

    .line 2335
    :cond_1c
    const-string v3, "sigs"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2336
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_a

    .line 2337
    :cond_1d
    const-string v3, "perms"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2338
    iget-object v3, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 2339
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_a

    .line 2341
    :cond_1e
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2343
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_a

    .line 2347
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v19           #installStatusStr:Ljava/lang/String;
    .end local v24           #outerDepth:I
    .end local v29           #tagName:Ljava/lang/String;
    .end local v33           #type:I
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2349
    :cond_20
    return-void

    .line 2161
    .end local v2           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v25       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 2168
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 2179
    :catch_4
    move-exception v3

    goto/16 :goto_2

    .line 2197
    .restart local v32       #timeStampStr:Ljava/lang/String;
    :catch_5
    move-exception v3

    goto/16 :goto_3

    .line 2204
    :catch_6
    move-exception v3

    goto/16 :goto_3

    .line 2212
    :catch_7
    move-exception v3

    goto/16 :goto_4

    .line 2219
    :catch_8
    move-exception v3

    goto/16 :goto_5

    .line 2280
    .end local v32           #timeStampStr:Ljava/lang/String;
    :catch_9
    move-exception v13

    move-object/from16 v2, v25

    .end local v25           #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    .restart local v2       #packageSetting:Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_c
.end method

.method private readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1994
    .local p1, out:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1997
    .local v3, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 1998
    :cond_1
    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 2002
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2003
    .local v7, tagName:Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2004
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2005
    .local v2, name:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2006
    .local v6, sourcePackage:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2007
    .local v5, ptype:Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v6, :cond_4

    .line 2008
    const-string v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2009
    .local v1, dynamic:Z
    new-instance v0, Lcom/android/server/pm/BasePermission;

    if-eqz v1, :cond_3

    const/4 v9, 0x2

    :goto_1
    invoke-direct {v0, v2, v6, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2011
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    const/4 v9, 0x0

    const-string v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 2013
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 2014
    if-eqz v1, :cond_2

    .line 2015
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 2016
    .local v4, pi:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2017
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2018
    const/4 v9, 0x0

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 2019
    const/4 v9, 0x0

    const-string v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2020
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2021
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 2023
    .end local v4           #pi:Landroid/content/pm/PermissionInfo;
    :cond_2
    iget-object v9, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #dynamic:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2009
    .restart local v1       #dynamic:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v5       #ptype:Ljava/lang/String;
    .restart local v6       #sourcePackage:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 2025
    .end local v1           #dynamic:Z
    :cond_4
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2

    .line 2030
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2

    .line 2036
    .end local v7           #tagName:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 8
    .parameter "parser"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 800
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 803
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 804
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 808
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 810
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 811
    .local v1, pa:Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 812
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 814
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 820
    .end local v1           #pa:Lcom/android/server/pm/PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 822
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 825
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    .line 2408
    const/4 v2, 0x0

    .line 2409
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2410
    .local v1, idStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2411
    .local v4, pkgFlags:I
    const/4 v5, 0x0

    .line 2413
    .local v5, su:Lcom/android/server/pm/SharedUserSetting;
    const/4 v9, 0x0

    :try_start_0
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2414
    const/4 v9, 0x0

    const-string v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2415
    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2416
    .local v8, userId:I
    :goto_0
    const-string v9, "true"

    const/4 v10, 0x0

    const-string v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2417
    or-int/lit8 v4, v4, 0x1

    .line 2419
    :cond_0
    if-nez v2, :cond_5

    .line 2420
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2442
    .end local v8           #userId:I
    :cond_1
    :goto_1
    if-eqz v5, :cond_9

    .line 2443
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2446
    .local v3, outerDepth:I
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_a

    if-ne v7, v13, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_a

    .line 2447
    :cond_3
    if-eq v7, v13, :cond_2

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    .line 2451
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2452
    .local v6, tagName:Ljava/lang/String;
    const-string v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2453
    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2415
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 2423
    .restart local v8       #userId:I
    :cond_5
    if-nez v8, :cond_6

    .line 2424
    const/4 v9, 0x5

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2435
    .end local v8           #userId:I
    :catch_0
    move-exception v0

    .line 2436
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has bad userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2429
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2430
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2454
    .end local v8           #userId:I
    .restart local v3       #outerDepth:I
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_7
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2455
    iget-object v9, v5, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_2

    .line 2457
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2459
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 2464
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2466
    :cond_a
    return-void
.end method

.method private removeUserIdLPw(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 740
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 741
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 742
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 743
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 747
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .parameter "name"
    .parameter "newp"

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 687
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 688
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_1

    .line 689
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 690
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-void

    .line 692
    :cond_1
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .locals 3
    .parameter "uid"
    .parameter "obj"

    .prologue
    .line 750
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 751
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 752
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 753
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 757
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIII)Lcom/android/server/pm/PackageSetting;
    .locals 9
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "uid"
    .parameter "vc"
    .parameter "pkgFlags"
    .parameter "hmctCode"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 313
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 314
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, p6, :cond_0

    move-object v1, v0

    .line 328
    :goto_0
    return-object v1

    .line 317
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    goto :goto_0

    .line 321
    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    .end local v0           #p:Lcom/android/server/pm/PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V

    .line 323
    .restart local v0       #p:Lcom/android/server/pm/PackageSetting;
    iput p6, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 324
    invoke-direct {p0, p6, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 326
    goto :goto_0

    .line 328
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    :cond_0
    return-void
.end method

.method addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .parameter "name"
    .parameter "uid"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 333
    .local v0, s:Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_2

    .line 334
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_1

    move-object v1, v0

    .line 347
    :cond_0
    :goto_0
    return-object v1

    .line 337
    :cond_1
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0           #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 342
    .restart local v0       #s:Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 343
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 345
    goto :goto_0
.end method

.method createNewUserLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;)V
    .locals 5
    .parameter "service"
    .parameter "installer"
    .parameter "userHandle"
    .parameter "path"

    .prologue
    const/4 v4, -0x1

    .line 2498
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z

    .line 2499
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2501
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2503
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    iget v2, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 2505
    iget-object v2, v1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-virtual {p2, v2, v3, p3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;II)I

    goto :goto_0

    .line 2503
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2508
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 2509
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 2510
    return-void
.end method

.method disableSystemPackageLPw(Ljava/lang/String;)Z
    .locals 7
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 263
    .local v2, p:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_1

    .line 264
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an installed package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 269
    .local v0, dp:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 270
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 273
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 280
    .local v1, newp:Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 281
    const/4 v3, 0x1

    goto :goto_0
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V
    .locals 10
    .parameter "pw"
    .parameter "prefix"
    .parameter "ps"
    .parameter "sdf"
    .parameter "date"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2712
    .local p6, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Package ["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v8, :cond_10

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2714
    const-string v8, "] ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2716
    const-string v8, "):"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2718
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 2719
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  compat name="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2720
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2723
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  userId="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2724
    const-string v8, " gids="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_1

    .line 2726
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  sharedUser="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2728
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  pkg="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2729
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  codePath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2730
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  resourcePath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2731
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  nativeLibraryPath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  versionCode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2733
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_2

    .line 2734
    const-string v8, " targetSdk="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2736
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2737
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_14

    .line 2738
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  versionName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  applicationInfo="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2740
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  flags="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {p1, v8, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 2742
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2743
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  dataDir="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2744
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v8, v8, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v8, :cond_3

    .line 2745
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  mOperationPending=true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  supportsScreens=["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2748
    const/4 v1, 0x1

    .line 2749
    .local v1, first:Z
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_5

    .line 2750
    if-nez v1, :cond_4

    .line 2751
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2752
    :cond_4
    const/4 v1, 0x0

    .line 2753
    const-string v8, "small"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2755
    :cond_5
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_7

    .line 2756
    if-nez v1, :cond_6

    .line 2757
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2758
    :cond_6
    const/4 v1, 0x0

    .line 2759
    const-string v8, "medium"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2761
    :cond_7
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_9

    .line 2762
    if-nez v1, :cond_8

    .line 2763
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2764
    :cond_8
    const/4 v1, 0x0

    .line 2765
    const-string v8, "large"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2767
    :cond_9
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x8

    and-int/2addr v8, v9

    if-eqz v8, :cond_b

    .line 2768
    if-nez v1, :cond_a

    .line 2769
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2770
    :cond_a
    const/4 v1, 0x0

    .line 2771
    const-string v8, "xlarge"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2773
    :cond_b
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_d

    .line 2774
    if-nez v1, :cond_c

    .line 2775
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2776
    :cond_c
    const/4 v1, 0x0

    .line 2777
    const-string v8, "resizeable"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2779
    :cond_d
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_f

    .line 2780
    if-nez v1, :cond_e

    .line 2781
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2782
    :cond_e
    const/4 v1, 0x0

    .line 2783
    const-string v8, "anyDensity"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2785
    :cond_f
    const-string v8, "]"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_11

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_11

    .line 2787
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  libraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_11

    .line 2789
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2713
    .end local v1           #first:Z
    .end local v2           #i:I
    :cond_10
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 2792
    .restart local v1       #first:Z
    :cond_11
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v8, :cond_12

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_12

    .line 2793
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesLibraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_12

    .line 2795
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2798
    .end local v2           #i:I
    :cond_12
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v8, :cond_13

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_13

    .line 2800
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesOptionalLibraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_13

    .line 2802
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2803
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2806
    .end local v2           #i:I
    :cond_13
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v8, :cond_14

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_14

    .line 2808
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesLibraryFiles:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_14

    .line 2810
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2814
    .end local v1           #first:Z
    .end local v2           #i:I
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  timeStamp="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2815
    iget-wide v8, p3, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 2816
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  firstInstallTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2818
    iget-wide v8, p3, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 2819
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  lastUpdateTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2821
    iget-wide v8, p3, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 2822
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v8, :cond_15

    .line 2824
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  installerPackageName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  signatures="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2828
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  permissionsFixed="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p3, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2829
    const-string v8, " haveGids="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p3, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2830
    const-string v8, " installStatus="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 2831
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  pkgFlags="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {p1, v8, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 2832
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2833
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2834
    .local v7, user:Landroid/content/pm/UserInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  User "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2835
    const-string v8, " installed="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2836
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2837
    const-string v8, " stopped="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2838
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2839
    const-string v8, " notLaunched="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2840
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 2841
    const-string v8, " enabled="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2842
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 2843
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v5

    .line 2844
    .local v5, lastDisabledAppCaller:Ljava/lang/String;
    if-eqz v5, :cond_17

    .line 2845
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    lastDisabledCaller: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2846
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    :cond_17
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Ljava/util/HashSet;

    move-result-object v0

    .line 2849
    .local v0, cmp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_18

    .line 2850
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    disabledComponents:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2852
    .local v6, s:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 2855
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #s:Ljava/lang/String;
    :cond_18
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Ljava/util/HashSet;

    move-result-object v0

    .line 2856
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_16

    .line 2857
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    enabledComponents:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2859
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2863
    .end local v0           #cmp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #lastDisabledAppCaller:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #user:Landroid/content/pm/UserInfo;
    :cond_19
    iget-object v8, p3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_1a

    .line 2864
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  grantedPermissions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    iget-object v8, p3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2866
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2869
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #s:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 10
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 2872
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2873
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 2874
    .local v5, date:Ljava/util/Date;
    const/4 v9, 0x0

    .line 2875
    .local v9, printedSomething:Z
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v6

    .line 2876
    .local v6, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2877
    .local v3, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_1

    iget-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2882
    :cond_1
    if-eqz p2, :cond_2

    .line 2883
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p3, v0}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 2886
    :cond_2
    if-nez v9, :cond_4

    .line 2887
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2888
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    :cond_3
    const-string v0, "Packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2890
    const/4 v9, 0x1

    .line 2892
    :cond_4
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_0

    .line 2895
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_5
    const/4 v9, 0x0

    .line 2896
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 2897
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2898
    .local v7, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2902
    :cond_7
    if-nez v9, :cond_9

    .line 2903
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2904
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    :cond_8
    const-string v0, "Renamed packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    const/4 v9, 0x1

    .line 2908
    :cond_9
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2909
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2910
    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2911
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2915
    .end local v7           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const/4 v9, 0x0

    .line 2916
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 2917
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2918
    .restart local v3       #ps:Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_c

    iget-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2922
    :cond_c
    if-nez v9, :cond_e

    .line 2923
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2924
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    :cond_d
    const-string v0, "Hidden system packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    const/4 v9, 0x1

    .line 2928
    :cond_e
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_2

    .line 2931
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_f
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 5
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 2934
    const/4 v2, 0x0

    .line 2935
    .local v2, printedSomething:Z
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 2936
    .local v1, p:Lcom/android/server/pm/BasePermission;
    if-eqz p2, :cond_1

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2939
    :cond_1
    if-nez v2, :cond_3

    .line 2940
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2941
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    :cond_2
    const-string v3, "Permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    const/4 v2, 0x1

    .line 2945
    :cond_3
    const-string v3, "  Permission ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "] ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2946
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2947
    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    const-string v3, "    sourcePackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    const-string v3, "    uid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2950
    const-string v3, " gids="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2951
    const-string v3, " type="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2952
    const-string v3, " prot="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2953
    iget v3, v1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v3, :cond_4

    .line 2955
    const-string v3, "    packageSetting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2957
    :cond_4
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_5

    .line 2958
    const-string v3, "    perm="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2960
    :cond_5
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    iget-object v4, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2961
    const-string v3, "    enforced="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2962
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2965
    .end local v1           #p:Lcom/android/server/pm/BasePermission;
    :cond_6
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 1
    .parameter "pw"
    .parameter "dumpState"

    .prologue
    .line 2997
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2999
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .locals 6
    .parameter "pw"
    .parameter "packageName"
    .parameter "dumpState"

    .prologue
    .line 2968
    const/4 v2, 0x0

    .line 2969
    .local v2, printedSomething:Z
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 2970
    .local v4, su:Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 2973
    :cond_1
    if-nez v2, :cond_3

    .line 2974
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2975
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    :cond_2
    const-string v5, "Shared users:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    const/4 v2, 0x1

    .line 2979
    :cond_3
    const-string v5, "  SharedUser ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2980
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2981
    const-string v5, "] ("

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2982
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2983
    const-string v5, "):"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    const-string v5, "    userId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2985
    iget v5, v4, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2986
    const-string v5, " gids="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2987
    iget-object v5, v4, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    const-string v5, "    grantedPermissions:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    iget-object v5, v4, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2990
    .local v3, s:Ljava/lang/String;
    const-string v5, "      "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2991
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2994
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #su:Lcom/android/server/pm/SharedUserSetting;
    :cond_4
    return-void
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2
    .parameter "userId"

    .prologue
    .line 760
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 761
    .local v0, pir:Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_0

    .line 762
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    .end local v0           #pir:Lcom/android/server/pm/PreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 763
    .restart local v0       #pir:Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 765
    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 12
    .parameter "name"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 288
    .local v10, p:Lcom/android/server/pm/PackageSetting;
    if-nez v10, :cond_0

    .line 289
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v11, 0x0

    .line 299
    :goto_0
    return-object v11

    .line 293
    :cond_0
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, v10, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 296
    :cond_1
    iget-object v2, v10, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iget-object v4, v10, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iget-object v5, v10, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iget v6, v10, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v7, v10, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iget v8, v10, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iget v9, v10, Lcom/android/server/pm/PackageSettingBase;->hmctCode:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIII)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    .line 298
    .local v11, ret:Lcom/android/server/pm/PackageSetting;
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 4
    .parameter "packageName"
    .parameter "userId"

    .prologue
    .line 2613
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2614
    .local v0, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 2615
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2617
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "componentName"
    .parameter "userId"

    .prologue
    .line 2621
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2622
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2623
    .local v2, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_0

    .line 2624
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2626
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2627
    .local v0, classNameStr:Ljava/lang/String;
    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 2
    .parameter "name"

    .prologue
    .line 2555
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2556
    .local v0, ps:Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2605
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2606
    .local v0, pkg:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_0

    .line 2607
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2609
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v1
.end method

.method getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1579
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1580
    .local v1, kList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1581
    .local v0, its:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1583
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1584
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1585
    .local v3, ps:Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 1586
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1589
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_1
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILandroid/os/UserHandle;Z)Lcom/android/server/pm/PackageSetting;
    .locals 16
    .parameter "pkg"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pkgFlags"
    .parameter "user"
    .parameter "add"

    .prologue
    .line 213
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 214
    .local v2, name:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v9, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/content/pm/PackageParser$Package;->mHmctCode:I

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    .line 217
    .local v15, p:Lcom/android/server/pm/PackageSetting;
    return-object v15
.end method

.method getSharedUserLPw(Ljava/lang/String;IZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 4
    .parameter "name"
    .parameter "pkgFlags"
    .parameter "create"

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 244
    .local v0, s:Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_1

    .line 245
    if-nez p3, :cond_0

    .line 246
    const/4 v1, 0x0

    .line 258
    :goto_0
    return-object v1

    .line 248
    :cond_0
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0           #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 249
    .restart local v0       #s:Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 250
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 258
    goto :goto_0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .locals 3
    .parameter "uid"

    .prologue
    .line 730
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1

    .line 731
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 732
    .local v0, N:I
    add-int/lit16 v1, p1, -0x2710

    .line 733
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 735
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_0
    return-object v2

    .line 733
    .restart local v0       #N:I
    .restart local v1       #index:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 735
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 2546
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 2548
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 2551
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .parameter "p"
    .parameter "pkg"

    .prologue
    .line 541
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 544
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 545
    .local v0, codePath:Ljava/lang/String;
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 547
    .local v2, resourcePath:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 551
    iput-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 554
    :cond_0
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 558
    iput-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 561
    :cond_1
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 562
    .local v1, nativeLibraryPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 564
    iput-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 567
    :cond_2
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    if-eq v3, v4, :cond_3

    .line 568
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 572
    :cond_3
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mHmctCode:I

    iget v4, p1, Lcom/android/server/pm/PackageSettingBase;->hmctCode:I

    if-eq v3, v4, :cond_4

    .line 573
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mHmctCode:I

    iput v3, p1, Lcom/android/server/pm/PackageSettingBase;->hmctCode:I

    .line 576
    :cond_4
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_5

    .line 577
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 580
    :cond_5
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v4, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    if-eq v3, v4, :cond_6

    .line 581
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v3, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 585
    :cond_6
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_7

    .line 586
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 588
    :cond_7
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    .line 589
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 8
    .parameter "componentInfo"
    .parameter "flags"
    .parameter "userId"

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2564
    and-int/lit16 v5, p2, 0x200

    if-eqz v5, :cond_1

    .line 2601
    :cond_0
    :goto_0
    return v3

    .line 2567
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 2568
    .local v1, pkgName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2577
    .local v0, packageSettings:Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_2

    move v3, v4

    .line 2578
    goto :goto_0

    .line 2580
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 2581
    .local v2, ustate:Landroid/content/pm/PackageUserState;
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    .line 2582
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_0

    .line 2586
    :cond_3
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_4

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_5

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v5, :cond_5

    :cond_4
    move v3, v4

    .line 2591
    goto :goto_0

    .line 2593
    :cond_5
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v5, :cond_6

    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2597
    :cond_6
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    .line 2599
    goto :goto_0

    .line 2601
    :cond_7
    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_0
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1
    .parameter "name"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method readAllUsersPackageRestrictionsLPr()V
    .locals 4

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 788
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_1

    .line 789
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 796
    :cond_0
    return-void

    .line 793
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 794
    .local v1, user:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_0
.end method

.method readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 13
    .parameter "service"
    .parameter "userId"

    .prologue
    .line 1812
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "etc/preferred-apps"

    invoke-direct {v6, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1813
    .local v6, preferredDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1817
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Directory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cannot be read"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1822
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1823
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1824
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-xml file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " directory, ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1827
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1828
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Preferred apps file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cannot be read"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1833
    :cond_5
    const/4 v7, 0x0

    .line 1835
    .local v7, str:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1836
    .end local v7           #str:Ljava/io/FileInputStream;
    .local v8, str:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1837
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1841
    :cond_6
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 1845
    :cond_7
    const/4 v10, 0x2

    if-eq v9, v10, :cond_8

    .line 1846
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Preferred apps file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not have start tag"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1860
    if-eqz v8, :cond_3

    .line 1862
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1863
    :catch_0
    move-exception v10

    goto :goto_2

    .line 1849
    :cond_8
    :try_start_3
    const-string v10, "preferred-activities"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1850
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Preferred apps file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not start with \'preferred-activities\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1860
    if-eqz v8, :cond_3

    .line 1862
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 1863
    :catch_1
    move-exception v10

    goto/16 :goto_2

    .line 1854
    :cond_9
    :try_start_5
    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 1860
    if-eqz v8, :cond_3

    .line 1862
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 1863
    :catch_2
    move-exception v10

    goto/16 :goto_2

    .line 1855
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v8           #str:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v7       #str:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 1856
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_7
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error reading apps file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1860
    if-eqz v7, :cond_3

    .line 1862
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 1863
    :catch_4
    move-exception v10

    goto/16 :goto_2

    .line 1857
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v1

    .line 1858
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_9
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error reading apps file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1860
    if-eqz v7, :cond_3

    .line 1862
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 1863
    :catch_6
    move-exception v10

    goto/16 :goto_2

    .line 1860
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v7, :cond_a

    .line 1862
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1864
    :cond_a
    :goto_6
    throw v10

    .line 1863
    :catch_7
    move-exception v11

    goto :goto_6

    .line 1860
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1857
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1855
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_9
    move-exception v1

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method readLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;IZ)Z
    .locals 46
    .parameter "service"
    .parameter
    .parameter "sdkVersion"
    .parameter "onlyCore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 1600
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v39, 0x0

    .line 1601
    .local v39, str:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1603
    :try_start_0
    new-instance v40, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1604
    .end local v39           #str:Ljava/io/FileInputStream;
    .local v40, str:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    const/4 v3, 0x4

    const-string v4, "Need to read from backup settings file"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1611
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_0
    move-object/from16 v39, v40

    .line 1620
    .end local v40           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1624
    if-nez v39, :cond_3

    .line 1625
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const/4 v3, 0x4

    const-string v4, "No settings file; creating initial state"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1629
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 1630
    const/4 v3, 0x0

    .line 1807
    :goto_1
    return v3

    .line 1632
    :cond_2
    new-instance v40, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v40       #str:Ljava/io/FileInputStream;
    move-object/from16 v39, v40

    .line 1634
    .end local v40           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v37

    .line 1635
    .local v37, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1639
    :cond_4
    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v42

    .local v42, type:I
    const/4 v3, 0x2

    move/from16 v0, v42

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v42

    if-ne v0, v3, :cond_4

    .line 1643
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, v42

    if-eq v0, v3, :cond_6

    .line 1644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    const/4 v3, 0x5

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1647
    const-string v3, "PackageManager"

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v3, 0x0

    goto :goto_1

    .line 1652
    :cond_6
    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v35

    .line 1654
    .local v35, outerDepth:I
    :cond_7
    :goto_2
    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v42

    const/4 v3, 0x1

    move/from16 v0, v42

    if-eq v0, v3, :cond_17

    const/4 v3, 0x3

    move/from16 v0, v42

    if-ne v0, v3, :cond_8

    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v35

    if-le v3, v0, :cond_17

    .line 1655
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v42

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    move/from16 v0, v42

    if-eq v0, v3, :cond_7

    .line 1659
    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v41

    .line 1660
    .local v41, tagName:Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1661
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1733
    .end local v35           #outerDepth:I
    .end local v37           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v41           #tagName:Ljava/lang/String;
    .end local v42           #type:I
    :catch_0
    move-exception v23

    .line 1734
    .local v23, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1736
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    .end local v23           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1745
    .local v17, N:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    .line 1746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PendingPackage;

    .line 1747
    .local v38, pp:Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v38

    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v29

    .line 1748
    .local v29, idObj:Ljava/lang/Object;
    if-eqz v29, :cond_19

    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_19

    .line 1749
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object/from16 v7, v29

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    move-object/from16 v0, v38

    iget-object v9, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    move-object/from16 v0, v38

    iget-object v10, v0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, v38

    iget v11, v0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    move-object/from16 v0, v38

    iget v12, v0, Lcom/android/server/pm/PackageSettingBase;->hmctCode:I

    move-object/from16 v0, v38

    iget v13, v0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v16}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v36

    .line 1753
    .local v36, p:Lcom/android/server/pm/PackageSetting;
    if-nez v36, :cond_18

    .line 1754
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1745
    .end local v36           #p:Lcom/android/server/pm/PackageSetting;
    :goto_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 1662
    .end local v17           #N:I
    .end local v26           #i:I
    .end local v29           #idObj:Ljava/lang/Object;
    .end local v38           #pp:Lcom/android/server/pm/PendingPackage;
    .restart local v35       #outerDepth:I
    .restart local v37       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v41       #tagName:Ljava/lang/String;
    .restart local v42       #type:I
    :cond_9
    :try_start_3
    const-string v3, "permissions"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 1738
    .end local v35           #outerDepth:I
    .end local v37           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v41           #tagName:Ljava/lang/String;
    .end local v42           #type:I
    :catch_1
    move-exception v23

    .line 1739
    .local v23, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1741
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1664
    .end local v23           #e:Ljava/io/IOException;
    .restart local v35       #outerDepth:I
    .restart local v37       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v41       #tagName:Ljava/lang/String;
    .restart local v42       #type:I
    :cond_a
    :try_start_4
    const-string v3, "permission-trees"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1666
    :cond_b
    const-string v3, "shared-user"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1667
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1668
    :cond_c
    const-string v3, "preferred-packages"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1670
    const-string v3, "preferred-activities"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1673
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2

    .line 1674
    :cond_d
    const-string v3, "updated-package"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1675
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1676
    :cond_e
    const-string v3, "cleaning-package"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1677
    const/4 v3, 0x0

    const-string v4, "name"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1678
    .local v32, name:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "user"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1679
    .local v45, userStr:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "code"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v19

    .line 1680
    .local v19, codeStr:Ljava/lang/String;
    if-eqz v32, :cond_7

    .line 1681
    const/16 v44, 0x0

    .line 1682
    .local v44, userId:I
    const/16 v18, 0x1

    .line 1684
    .local v18, andCode:Z
    if-eqz v45, :cond_f

    .line 1685
    :try_start_5
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v44

    .line 1689
    :cond_f
    :goto_6
    if-eqz v19, :cond_10

    .line 1690
    :try_start_6
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 1692
    :cond_10
    new-instance v3, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    goto/16 :goto_2

    .line 1694
    .end local v18           #andCode:Z
    .end local v19           #codeStr:Ljava/lang/String;
    .end local v32           #name:Ljava/lang/String;
    .end local v44           #userId:I
    .end local v45           #userStr:Ljava/lang/String;
    :cond_11
    const-string v3, "renamed-package"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1695
    const/4 v3, 0x0

    const-string v4, "new"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1696
    .local v33, nname:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "old"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1697
    .local v34, oname:Ljava/lang/String;
    if-eqz v33, :cond_7

    if-eqz v34, :cond_7

    .line 1698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1700
    .end local v33           #nname:Ljava/lang/String;
    .end local v34           #oname:Ljava/lang/String;
    :cond_12
    const-string v3, "last-platform-version"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1701
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1703
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "internal"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1704
    .local v30, internal:Ljava/lang/String;
    if-eqz v30, :cond_13

    .line 1705
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 1707
    :cond_13
    const/4 v3, 0x0

    const-string v4, "external"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1708
    .local v25, external:Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 1709
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 1711
    .end local v25           #external:Ljava/lang/String;
    .end local v30           #internal:Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 1713
    :cond_14
    :try_start_8
    const-string v3, "verifier"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1714
    const/4 v3, 0x0

    const-string v4, "device"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v20

    .line 1716
    .local v20, deviceIdentity:Ljava/lang/String;
    :try_start_9
    invoke-static/range {v20 .. v20}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 1717
    :catch_3
    move-exception v23

    .line 1718
    .local v23, e:Ljava/lang/IllegalArgumentException;
    :try_start_a
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discard invalid verifier device id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1721
    .end local v20           #deviceIdentity:Ljava/lang/String;
    .end local v23           #e:Ljava/lang/IllegalArgumentException;
    :cond_15
    const-string v3, "read-external-storage"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1722
    const/4 v3, 0x0

    const-string v4, "enforcement"

    move-object/from16 v0, v37

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1723
    .local v24, enforcement:Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 1725
    .end local v24           #enforcement:Ljava/lang/String;
    :cond_16
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v37 .. v37}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-static/range {v37 .. v37}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1731
    .end local v41           #tagName:Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 1758
    .end local v35           #outerDepth:I
    .end local v37           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v42           #type:I
    .restart local v17       #N:I
    .restart local v26       #i:I
    .restart local v29       #idObj:Ljava/lang/Object;
    .restart local v36       #p:Lcom/android/server/pm/PackageSetting;
    .restart local v38       #pp:Lcom/android/server/pm/PendingPackage;
    :cond_18
    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_5

    .line 1759
    .end local v36           #p:Lcom/android/server/pm/PackageSetting;
    :cond_19
    if-eqz v29, :cond_1a

    .line 1760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1762
    .local v31, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    const/4 v3, 0x6

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 1765
    .end local v31           #msg:Ljava/lang/String;
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1767
    .restart local v31       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    const/4 v3, 0x6

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 1771
    .end local v29           #idObj:Ljava/lang/Object;
    .end local v31           #msg:Ljava/lang/String;
    .end local v38           #pp:Lcom/android/server/pm/PendingPackage;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1776
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 1777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1780
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1795
    :cond_1d
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1796
    .local v21, disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_1e
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1797
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/PackageSetting;

    .line 1798
    .local v22, disabledPs:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v28

    .line 1799
    .local v28, id:Ljava/lang/Object;
    if-eqz v28, :cond_1e

    move-object/from16 v0, v28

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_1e

    .line 1800
    check-cast v28, Lcom/android/server/pm/SharedUserSetting;

    .end local v28           #id:Ljava/lang/Object;
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    goto :goto_8

    .line 1782
    .end local v21           #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v22           #disabledPs:Lcom/android/server/pm/PackageSetting;
    :cond_1f
    if-nez p2, :cond_20

    .line 1783
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_7

    .line 1785
    :cond_20
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/pm/UserInfo;

    .line 1786
    .local v43, user:Landroid/content/pm/UserInfo;
    move-object/from16 v0, v43

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_9

    .line 1804
    .end local v27           #i$:Ljava/util/Iterator;
    .end local v43           #user:Landroid/content/pm/UserInfo;
    .restart local v21       #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1687
    .end local v17           #N:I
    .end local v21           #disabledIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v26           #i:I
    .restart local v18       #andCode:Z
    .restart local v19       #codeStr:Ljava/lang/String;
    .restart local v32       #name:Ljava/lang/String;
    .restart local v35       #outerDepth:I
    .restart local v37       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v41       #tagName:Ljava/lang/String;
    .restart local v42       #type:I
    .restart local v44       #userId:I
    .restart local v45       #userStr:Ljava/lang/String;
    :catch_4
    move-exception v3

    goto/16 :goto_6

    .line 1615
    .end local v18           #andCode:Z
    .end local v19           #codeStr:Ljava/lang/String;
    .end local v32           #name:Ljava/lang/String;
    .end local v35           #outerDepth:I
    .end local v37           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v41           #tagName:Ljava/lang/String;
    .end local v42           #type:I
    .end local v44           #userId:I
    .end local v45           #userStr:Ljava/lang/String;
    :catch_5
    move-exception v3

    goto/16 :goto_0

    .end local v39           #str:Ljava/io/FileInputStream;
    .restart local v40       #str:Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object/from16 v39, v40

    .end local v40           #str:Ljava/io/FileInputStream;
    .restart local v39       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 31
    .parameter "userId"

    .prologue
    .line 831
    const/16 v24, 0x0

    .line 832
    .local v24, str:Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v28

    .line 833
    .local v28, userPackagesStateFile:Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v13

    .line 834
    .local v13, backupFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 836
    :try_start_0
    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 837
    .end local v24           #str:Ljava/io/FileInputStream;
    .local v25, str:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v29, "Reading from backup stopped packages file\n"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const/4 v5, 0x4

    const-string v29, "Need to read from backup stopped packages file"

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 840
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 844
    const-string v5, "PackageManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cleaning up stopped packages file "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 854
    :cond_0
    :goto_0
    if-nez v25, :cond_14

    .line 855
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 856
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v29, "No stopped packages file found\n"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const/4 v5, 0x4

    const-string v29, "No stopped packages file; assuming all started"

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 865
    .local v3, pkg:Lcom/android/server/pm/PackageSetting;
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 958
    .end local v3           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v16           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v14

    move-object/from16 v24, v25

    .line 959
    .end local v25           #str:Ljava/io/FileInputStream;
    .local v14, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v24       #str:Ljava/io/FileInputStream;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error reading: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    const/4 v5, 0x6

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error reading stopped packages: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 962
    const-string v5, "PackageManager"

    const-string v29, "Error reading package manager stopped packages"

    move-object/from16 v0, v29

    invoke-static {v5, v0, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    .end local v14           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    .line 848
    :catch_1
    move-exception v5

    :goto_4
    move-object/from16 v25, v24

    .end local v24           #str:Ljava/io/FileInputStream;
    .restart local v25       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v24, v25

    .line 871
    .end local v25           #str:Ljava/io/FileInputStream;
    .restart local v24       #str:Ljava/io/FileInputStream;
    goto :goto_3

    .line 873
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #str:Ljava/io/FileInputStream;
    .restart local v25       #str:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 875
    .end local v25           #str:Ljava/io/FileInputStream;
    .restart local v24       #str:Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .line 876
    .local v22, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 880
    :cond_3
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, type:I
    const/4 v5, 0x2

    move/from16 v0, v27

    if-eq v0, v5, :cond_4

    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_3

    .line 884
    :cond_4
    const/4 v5, 0x2

    move/from16 v0, v27

    if-eq v0, v5, :cond_5

    .line 885
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v29, "No start tag found in package restrictions file\n"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const/4 v5, 0x5

    const-string v29, "No start tag found in package manager stopped packages"

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_3

    .line 958
    .end local v22           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v27           #type:I
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .line 891
    .restart local v22       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27       #type:I
    :cond_5
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    .line 892
    .local v20, outerDepth:I
    const/4 v4, 0x0

    .line 894
    .local v4, ps:Lcom/android/server/pm/PackageSetting;
    :cond_6
    :goto_6
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    const/4 v5, 0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_13

    const/4 v5, 0x3

    move/from16 v0, v27

    if-ne v0, v5, :cond_7

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v20

    if-le v5, v0, :cond_13

    .line 896
    :cond_7
    const/4 v5, 0x3

    move/from16 v0, v27

    if-eq v0, v5, :cond_6

    const/4 v5, 0x4

    move/from16 v0, v27

    if-eq v0, v5, :cond_6

    .line 901
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 902
    .local v26, tagName:Ljava/lang/String;
    const-string v5, "pkg"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 903
    const/4 v5, 0x0

    const-string v29, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 904
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ps:Lcom/android/server/pm/PackageSetting;
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 905
    .restart local v4       #ps:Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_8

    .line 906
    const-string v5, "PackageManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No package known for stopped package: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 964
    .end local v4           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #outerDepth:I
    .end local v22           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v26           #tagName:Ljava/lang/String;
    .end local v27           #type:I
    :catch_3
    move-exception v14

    .line 965
    .local v14, e:Ljava/io/IOException;
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error reading: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    const/4 v5, 0x6

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error reading settings: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 967
    const-string v5, "PackageManager"

    const-string v29, "Error reading package manager stopped packages"

    move-object/from16 v0, v29

    invoke-static {v5, v0, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 911
    .end local v14           #e:Ljava/io/IOException;
    .restart local v4       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v20       #outerDepth:I
    .restart local v22       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26       #tagName:Ljava/lang/String;
    .restart local v27       #type:I
    :cond_8
    const/4 v5, 0x0

    :try_start_5
    const-string v29, "enabled"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 912
    .local v15, enabledStr:Ljava/lang/String;
    if-nez v15, :cond_b

    const/4 v6, 0x0

    .line 914
    .local v6, enabled:I
    :goto_8
    const/4 v5, 0x0

    const-string v29, "enabledCaller"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 916
    .local v10, enabledCaller:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v29, "inst"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 917
    .local v17, installedStr:Ljava/lang/String;
    if-nez v17, :cond_c

    const/4 v7, 0x1

    .line 919
    .local v7, installed:Z
    :goto_9
    const/4 v5, 0x0

    const-string v29, "stopped"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 920
    .local v23, stoppedStr:Ljava/lang/String;
    if-nez v23, :cond_d

    const/4 v8, 0x0

    .line 922
    .local v8, stopped:Z
    :goto_a
    const/4 v5, 0x0

    const-string v29, "nl"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 923
    .local v19, notLaunchedStr:Ljava/lang/String;
    if-nez v23, :cond_e

    const/4 v9, 0x0

    .line 926
    .local v9, notLaunched:Z
    :goto_b
    const/4 v11, 0x0

    .line 927
    .local v11, enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 929
    .local v12, disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    .line 931
    .local v21, packageDepth:I
    :cond_9
    :goto_c
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    const/4 v5, 0x1

    move/from16 v0, v27

    if-eq v0, v5, :cond_10

    const/4 v5, 0x3

    move/from16 v0, v27

    if-ne v0, v5, :cond_a

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v21

    if-le v5, v0, :cond_10

    .line 933
    :cond_a
    const/4 v5, 0x3

    move/from16 v0, v27

    if-eq v0, v5, :cond_9

    const/4 v5, 0x4

    move/from16 v0, v27

    if-eq v0, v5, :cond_9

    .line 937
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 938
    const-string v5, "enabled-components"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 939
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;

    move-result-object v11

    goto :goto_c

    .line 912
    .end local v6           #enabled:I
    .end local v7           #installed:Z
    .end local v8           #stopped:Z
    .end local v9           #notLaunched:Z
    .end local v10           #enabledCaller:Ljava/lang/String;
    .end local v11           #enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12           #disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17           #installedStr:Ljava/lang/String;
    .end local v19           #notLaunchedStr:Ljava/lang/String;
    .end local v21           #packageDepth:I
    .end local v23           #stoppedStr:Ljava/lang/String;
    :cond_b
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_8

    .line 917
    .restart local v6       #enabled:I
    .restart local v10       #enabledCaller:Ljava/lang/String;
    .restart local v17       #installedStr:Ljava/lang/String;
    :cond_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_9

    .line 920
    .restart local v7       #installed:Z
    .restart local v23       #stoppedStr:Ljava/lang/String;
    :cond_d
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_a

    .line 923
    .restart local v8       #stopped:Z
    .restart local v19       #notLaunchedStr:Ljava/lang/String;
    :cond_e
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_b

    .line 940
    .restart local v9       #notLaunched:Z
    .restart local v11       #enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #packageDepth:I
    :cond_f
    const-string v5, "disabled-components"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 941
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;

    move-result-object v12

    goto :goto_c

    :cond_10
    move/from16 v5, p1

    .line 945
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto/16 :goto_6

    .line 947
    .end local v6           #enabled:I
    .end local v7           #installed:Z
    .end local v8           #stopped:Z
    .end local v9           #notLaunched:Z
    .end local v10           #enabledCaller:Ljava/lang/String;
    .end local v11           #enabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12           #disabledComponents:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #enabledStr:Ljava/lang/String;
    .end local v17           #installedStr:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #notLaunchedStr:Ljava/lang/String;
    .end local v21           #packageDepth:I
    .end local v23           #stoppedStr:Ljava/lang/String;
    :cond_11
    const-string v5, "preferred-activities"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 948
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_6

    .line 950
    :cond_12
    const-string v5, "PackageManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unknown element under <stopped-packages>: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 956
    .end local v26           #tagName:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 964
    .end local v4           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v20           #outerDepth:I
    .end local v22           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v24           #str:Ljava/io/FileInputStream;
    .end local v27           #type:I
    .restart local v25       #str:Ljava/io/FileInputStream;
    :catch_4
    move-exception v14

    move-object/from16 v24, v25

    .end local v25           #str:Ljava/io/FileInputStream;
    .restart local v24       #str:Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 848
    .end local v24           #str:Ljava/io/FileInputStream;
    .restart local v25       #str:Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object/from16 v24, v25

    .end local v25           #str:Ljava/io/FileInputStream;
    .restart local v24       #str:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v24           #str:Ljava/io/FileInputStream;
    .restart local v25       #str:Ljava/io/FileInputStream;
    :cond_14
    move-object/from16 v24, v25

    .end local v25           #str:Ljava/io/FileInputStream;
    .restart local v24       #str:Ljava/io/FileInputStream;
    goto/16 :goto_5

    :cond_15
    move-object/from16 v25, v24

    .end local v24           #str:Ljava/io/FileInputStream;
    .restart local v25       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method readStoppedLPw()V
    .locals 14

    .prologue
    .line 1146
    const/4 v7, 0x0

    .line 1147
    .local v7, str:Ljava/io/FileInputStream;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1149
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1150
    .end local v7           #str:Ljava/io/FileInputStream;
    .local v8, str:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "Reading from backup stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    const/4 v11, 0x4

    const-string v12, "Need to read from backup stopped packages file"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1153
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1157
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cleaning up stopped packages file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1167
    :cond_0
    :goto_0
    if-nez v8, :cond_c

    .line 1168
    :try_start_2
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1169
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No stopped packages file found\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const/4 v11, 0x4

    const-string v12, "No stopped packages file file; assuming all started"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1175
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1176
    .local v5, pkg:Lcom/android/server/pm/PackageSetting;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1177
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1231
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #pkg:Lcom/android/server/pm/PackageSetting;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 1232
    .end local v8           #str:Ljava/io/FileInputStream;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :goto_2
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading stopped packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1235
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1243
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    return-void

    .line 1161
    :catch_1
    move-exception v11

    :goto_4
    move-object v8, v7

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    goto :goto_0

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    move-object v7, v8

    .line 1179
    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1181
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1183
    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1184
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1188
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, type:I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 1192
    :cond_4
    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    .line 1193
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No start tag found in stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const/4 v11, 0x5

    const-string v12, "No start tag found in package manager stopped packages"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_3

    .line 1231
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #type:I
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1199
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #type:I
    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1201
    .local v3, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v3, :cond_b

    .line 1203
    :cond_7
    const/4 v11, 0x3

    if-eq v10, v11, :cond_6

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    .line 1208
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1209
    .local v9, tagName:Ljava/lang/String;
    const-string v11, "pkg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1210
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, name:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1212
    .local v6, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_9

    .line 1213
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1214
    const-string v11, "1"

    const/4 v12, 0x0

    const-string v13, "nl"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1215
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 1221
    :cond_8
    :goto_7
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 1237
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    .end local v9           #tagName:Ljava/lang/String;
    .end local v10           #type:I
    :catch_3
    move-exception v0

    .line 1238
    .local v0, e:Ljava/io/IOException;
    :goto_8
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading settings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1240
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1218
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #outerDepth:I
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #ps:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #tagName:Ljava/lang/String;
    .restart local v10       #type:I
    :cond_9
    :try_start_5
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package known for stopped package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1223
    .end local v2           #name:Ljava/lang/String;
    .end local v6           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_a
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <stopped-packages>: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1229
    .end local v9           #tagName:Ljava/lang/String;
    :cond_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 1237
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #str:Ljava/io/FileInputStream;
    .end local v10           #type:I
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto :goto_8

    .line 1161
    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    :cond_c
    move-object v7, v8

    .end local v8           #str:Ljava/io/FileInputStream;
    .restart local v7       #str:Ljava/io/FileInputStream;
    goto/16 :goto_5

    :cond_d
    move-object v8, v7

    .end local v7           #str:Ljava/io/FileInputStream;
    .restart local v8       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 668
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    .line 669
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 672
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 675
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 682
    :goto_0
    return v1

    .line 678
    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 679
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_0

    .line 682
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method removeUserLPr(I)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 2513
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2514
    .local v0, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2515
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_0

    .line 2517
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2518
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 2519
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2520
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v2

    .line 2521
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2522
    return-void
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "status"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 226
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 228
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    .line 231
    :cond_0
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"
    .parameter "installerPkgName"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 236
    .local v0, p:Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method setPackageStoppedStateLPw(Ljava/lang/String;ZZII)Z
    .locals 10
    .parameter "packageName"
    .parameter "stopped"
    .parameter "allowedByPermission"
    .parameter "uid"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2632
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 2633
    .local v6, appId:I
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 2634
    .local v7, pkgSetting:Lcom/android/server/pm/PackageSetting;
    if-nez v7, :cond_0

    .line 2635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2637
    :cond_0
    if-nez p3, :cond_1

    iget v0, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v6, v0, :cond_1

    .line 2638
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2650
    :cond_1
    invoke-virtual {v7, p5}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    if-eq v0, p2, :cond_4

    .line 2651
    invoke-virtual {v7, p2, p5}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2653
    invoke-virtual {v7, p5}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2654
    iget-object v0, v7, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2655
    const-string v0, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    iget-object v1, v7, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    new-array v5, v8, [I

    aput p5, v5, v9

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 2659
    :cond_2
    invoke-virtual {v7, v9, p5}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    :cond_3
    move v0, v8

    .line 2663
    :goto_0
    return v0

    :cond_4
    move v0, v9

    goto :goto_0
.end method

.method transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "origPkg"
    .parameter "newPkg"

    .prologue
    const/4 v5, 0x0

    .line 353
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    .line 354
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 356
    .local v3, permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 357
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 363
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 364
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 365
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 368
    :cond_1
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 369
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    goto :goto_2

    .line 354
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    goto :goto_1

    .line 353
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_4
    return-void
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;[I)V
    .locals 10
    .parameter "deletedPs"
    .parameter "globalGids"

    .prologue
    .line 626
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_2

    .line 627
    :cond_0
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    :goto_0
    return-void

    .line 632
    :cond_2
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_1

    .line 635
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 637
    .local v6, sus:Lcom/android/server/pm/SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 638
    .local v1, eachPerm:Ljava/lang/String;
    const/4 v7, 0x0

    .line 639
    .local v7, used:Z
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 642
    iget-object v8, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 643
    .local v5, pkg:Lcom/android/server/pm/PackageSetting;
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_4

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 646
    const/4 v7, 0x1

    .line 650
    .end local v5           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_5
    if-nez v7, :cond_3

    .line 652
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 656
    .end local v1           #eachPerm:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #used:Z
    :cond_6
    move-object v4, p2

    .line 657
    .local v4, newGids:[I
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 658
    .restart local v1       #eachPerm:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 659
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_7

    .line 660
    iget-object v8, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    goto :goto_2

    .line 663
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #eachPerm:Ljava/lang/String;
    :cond_8
    iput-object v4, v6, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto/16 :goto_0
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 779
    .local v2, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_1

    .line 784
    :cond_0
    return-void

    .line 781
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 782
    .local v1, user:Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 7
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1451
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1452
    const-string v3, "name"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1453
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1454
    const-string v3, "realName"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1456
    :cond_0
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1457
    const-string v3, "ft"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1458
    const-string v3, "it"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1459
    const-string v3, "ut"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1460
    const-string v3, "version"

    iget v4, p2, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1461
    const-string v3, "hmctCode"

    iget v4, p2, Lcom/android/server/pm/PackageSettingBase;->hmctCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1462
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1463
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1465
    :cond_1
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1466
    const-string v3, "nativeLibraryPath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1468
    :cond_2
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_4

    .line 1469
    const-string v3, "userId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1473
    :goto_0
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1474
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_5

    .line 1479
    iget-object v3, p2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1480
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1481
    .local v0, bp:Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_3

    .line 1486
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1487
    const-string v3, "name"

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1488
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1471
    .end local v0           #bp:Lcom/android/server/pm/BasePermission;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1492
    :cond_5
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1493
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1494
    return-void
.end method

.method writeLPr()V
    .locals 27

    .prologue
    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_1

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1257
    const-string v23, "PackageManager"

    const-string v24, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 1263
    const-string v23, "PackageManager"

    const-string v24, "Preserving older settings backup"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1270
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1271
    .local v9, fstr:Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1274
    .local v19, str:Ljava/io/BufferedOutputStream;
    new-instance v18, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1275
    .local v18, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v23, "utf-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1276
    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1277
    const-string v23, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1279
    const/16 v23, 0x0

    const-string v24, "packages"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1281
    const/16 v23, 0x0

    const-string v24, "last-platform-version"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1282
    const/16 v23, 0x0

    const-string v24, "internal"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1283
    const/16 v23, 0x0

    const-string v24, "external"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1284
    const/16 v23, 0x0

    const-string v24, "last-platform-version"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1287
    const/16 v23, 0x0

    const-string v24, "verifier"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1288
    const/16 v23, 0x0

    const-string v24, "device"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1289
    const/16 v23, 0x0

    const-string v24, "verifier"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1292
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1293
    const/16 v23, 0x0

    const-string v24, "read-external-storage"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1294
    const/16 v24, 0x0

    const-string v25, "enforcement"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_5

    const-string v23, "1"

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1296
    const/16 v23, 0x0

    const-string v24, "read-external-storage"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1299
    :cond_4
    const/16 v23, 0x0

    const-string v24, "permission-trees"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 1301
    .local v5, bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1432
    .end local v5           #bp:Lcom/android/server/pm/BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v18           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v19           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v7

    .line 1433
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v23, "PackageManager"

    const-string v24, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v23

    if-nez v23, :cond_0

    .line 1442
    const-string v23, "PackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to clean up mangled file: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1294
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v18       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19       #str:Ljava/io/BufferedOutputStream;
    :cond_5
    :try_start_1
    const-string v23, "0"

    goto/16 :goto_1

    .line 1303
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_6
    const/16 v23, 0x0

    const-string v24, "permission-trees"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1305
    const/16 v23, 0x0

    const-string v24, "permissions"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 1307
    .restart local v5       #bp:Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1435
    .end local v5           #bp:Lcom/android/server/pm/BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v18           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v19           #str:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v7

    .line 1436
    .local v7, e:Ljava/io/IOException;
    const-string v23, "PackageManager"

    const-string v24, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1309
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v18       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v19       #str:Ljava/io/BufferedOutputStream;
    :cond_7
    const/16 v23, 0x0

    :try_start_2
    const-string v24, "permissions"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    .line 1312
    .local v16, pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_5

    .line 1315
    .end local v16           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    .line 1316
    .restart local v16       #pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_6

    .line 1319
    .end local v16           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/SharedUserSetting;

    .line 1320
    .local v22, usr:Lcom/android/server/pm/SharedUserSetting;
    const/16 v23, 0x0

    const-string v24, "shared-user"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1321
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1322
    const/16 v23, 0x0

    const-string v24, "userId"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1324
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v23, v0

    const-string v24, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1325
    const/16 v23, 0x0

    const-string v24, "perms"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1326
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1327
    .local v15, name:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1328
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1329
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 1331
    .end local v15           #name:Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    const-string v24, "perms"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1332
    const/16 v23, 0x0

    const-string v24, "shared-user"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_7

    .line 1335
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v22           #usr:Lcom/android/server/pm/SharedUserSetting;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_d

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageCleanItem;

    .line 1337
    .local v13, item:Landroid/content/pm/PackageCleanItem;
    iget v0, v13, Landroid/content/pm/PackageCleanItem;->userId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 1338
    .local v21, userStr:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "cleaning-package"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1339
    const/16 v23, 0x0

    const-string v24, "name"

    iget-object v0, v13, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1340
    const/16 v24, 0x0

    const-string v25, "code"

    iget-boolean v0, v13, Landroid/content/pm/PackageCleanItem;->andCode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    const-string v23, "true"

    :goto_a
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1341
    const/16 v23, 0x0

    const-string v24, "user"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1342
    const/16 v23, 0x0

    const-string v24, "cleaning-package"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 1340
    :cond_c
    const-string v23, "false"

    goto :goto_a

    .line 1346
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #item:Landroid/content/pm/PackageCleanItem;
    .end local v21           #userStr:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    if-lez v23, :cond_e

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1348
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v23, 0x0

    const-string v24, "renamed-package"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    const/16 v24, 0x0

    const-string v25, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1350
    const/16 v24, 0x0

    const-string v25, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1351
    const/16 v23, 0x0

    const-string v24, "renamed-package"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 1355
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_e
    const/16 v23, 0x0

    const-string v24, "packages"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1357
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1359
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1360
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1361
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1b0

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1373
    new-instance v20, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".tmp"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v20, tempFile:Ljava/io/File;
    new-instance v14, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 1376
    .local v14, journal:Lcom/android/internal/util/JournaledFile;
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #fstr:Ljava/io/FileOutputStream;
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1377
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    new-instance v19, Ljava/io/BufferedOutputStream;

    .end local v19           #str:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1379
    .restart local v19       #str:Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1380
    .local v17, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    .line 1381
    .restart local v16       #pkg:Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1382
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1383
    .local v6, dataPath:Ljava/lang/String;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_10

    const/4 v12, 0x1

    .line 1387
    .local v12, isDebug:Z
    :goto_d
    const-string v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-gez v23, :cond_f

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    const/16 v24, 0x2710

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_f

    .line 1404
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1405
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    const-string v23, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1408
    if-eqz v12, :cond_11

    const-string v23, " 1 "

    :goto_e
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    const-string v23, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    const-string v23, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_c

    .line 1419
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #isDebug:Z
    .end local v16           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v7

    .line 1420
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1421
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 1424
    .end local v7           #e:Ljava/lang/Exception;
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1b0

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1383
    .restart local v4       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #dataPath:Ljava/lang/String;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v16       #pkg:Lcom/android/server/pm/PackageSetting;
    .restart local v17       #sb:Ljava/lang/StringBuilder;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 1408
    .restart local v12       #isDebug:Z
    :cond_11
    :try_start_5
    const-string v23, " 0 "

    goto :goto_e

    .line 1415
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v12           #isDebug:Z
    .end local v16           #pkg:Lcom/android/server/pm/PackageSetting;
    :cond_12
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1416
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1417
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    .line 1418
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_f
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 6
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1498
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1499
    const-string v2, "name"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1500
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1501
    const-string v2, "realName"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1503
    :cond_0
    const-string v2, "codePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1504
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1505
    const-string v2, "resourcePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1507
    :cond_1
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1508
    const-string v2, "nativeLibraryPath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1510
    :cond_2
    const-string v2, "flags"

    iget v3, p2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1511
    const-string v2, "ft"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1512
    const-string v2, "it"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1513
    const-string v2, "ut"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1514
    const-string v2, "version"

    iget v3, p2, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1515
    const-string v2, "hmctCode"

    iget v3, p2, Lcom/android/server/pm/PackageSettingBase;->hmctCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1516
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_6

    .line 1517
    const-string v2, "userId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1521
    :goto_0
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    if-eqz v2, :cond_3

    .line 1522
    const-string v2, "uidError"

    const-string v3, "true"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1524
    :cond_3
    iget v2, p2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    if-nez v2, :cond_4

    .line 1525
    const-string v2, "installStatus"

    const-string v3, "false"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1527
    :cond_4
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1528
    const-string v2, "installer"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1530
    :cond_5
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string v3, "sigs"

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1531
    iget v2, p2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_8

    .line 1532
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1533
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_7

    .line 1538
    iget-object v2, p2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1539
    .local v1, name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1540
    const-string v2, "name"

    invoke-interface {p1, v5, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1541
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1519
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :cond_6
    const-string v2, "sharedUserId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1544
    :cond_7
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1547
    :cond_8
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1548
    return-void
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 17
    .parameter "userId"

    .prologue
    .line 1017
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/pm/Settings;->isChargeMode:Z

    if-eqz v13, :cond_1

    .line 1018
    const-string v13, "PackageManager"

    const-string v14, "writePackageRestrictionsLPr charge mode return"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v11

    .line 1025
    .local v11, userPackagesStateFile:Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v2

    .line 1026
    .local v2, backupFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 1027
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1032
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1033
    invoke-virtual {v11, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1034
    const-string v13, "PackageManager"

    const-string v14, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v13, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1039
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1040
    const-string v13, "PackageManager"

    const-string v14, "Preserving older stopped packages backup"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1046
    .local v4, fstr:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1048
    .local v10, str:Ljava/io/BufferedOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1049
    .local v9, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v13, "utf-8"

    invoke-interface {v9, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1050
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1051
    const-string v13, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v14, 0x1

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1053
    const/4 v13, 0x0

    const-string v14, "package-restrictions"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1056
    .local v8, pkg:Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v12

    .line 1057
    .local v12, ustate:Landroid/content/pm/PackageUserState;
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    if-nez v13, :cond_6

    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-nez v13, :cond_6

    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v13, :cond_6

    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v13, :cond_6

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_5

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-gtz v13, :cond_6

    :cond_5
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_4

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 1063
    :cond_6
    const/4 v13, 0x0

    const-string v14, "pkg"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    const/4 v13, 0x0

    const-string v14, "name"

    iget-object v15, v8, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1067
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v13, :cond_7

    .line 1068
    const/4 v13, 0x0

    const-string v14, "inst"

    const-string v15, "false"

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    :cond_7
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v13, :cond_8

    .line 1071
    const/4 v13, 0x0

    const-string v14, "stopped"

    const-string v15, "true"

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1073
    :cond_8
    iget-boolean v13, v12, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v13, :cond_9

    .line 1074
    const/4 v13, 0x0

    const-string v14, "nl"

    const-string v15, "true"

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    :cond_9
    iget v13, v12, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v13, :cond_a

    .line 1077
    const/4 v13, 0x0

    const-string v14, "enabled"

    iget v15, v12, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v13, :cond_a

    .line 1080
    const/4 v13, 0x0

    const-string v14, "enabledCaller"

    iget-object v15, v12, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-interface {v9, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1084
    :cond_a
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_c

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 1086
    const/4 v13, 0x0

    const-string v14, "enabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1087
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1088
    .local v7, name:Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v9, v13, v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1128
    .end local v4           #fstr:Ljava/io/FileOutputStream;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v9           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v10           #str:Ljava/io/BufferedOutputStream;
    .end local v12           #ustate:Landroid/content/pm/PackageUserState;
    :catch_0
    move-exception v3

    .line 1129
    .local v3, e:Ljava/io/IOException;
    const-string v13, "PackageManager"

    const-string v14, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1136
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1137
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to clean up mangled file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1092
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #fstr:Ljava/io/FileOutputStream;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #pkg:Lcom/android/server/pm/PackageSetting;
    .restart local v9       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10       #str:Ljava/io/BufferedOutputStream;
    .restart local v12       #ustate:Landroid/content/pm/PackageUserState;
    :cond_b
    const/4 v13, 0x0

    :try_start_1
    const-string v14, "enabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_c
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v13, :cond_e

    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_e

    .line 1096
    const/4 v13, 0x0

    const-string v14, "disabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    iget-object v13, v12, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1098
    .restart local v7       #name:Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1099
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v9, v13, v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    const/4 v13, 0x0

    const-string v14, "item"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 1102
    .end local v7           #name:Ljava/lang/String;
    :cond_d
    const/4 v13, 0x0

    const-string v14, "disabled-components"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1104
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_e
    const/4 v13, 0x0

    const-string v14, "pkg"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 1108
    .end local v8           #pkg:Lcom/android/server/pm/PackageSetting;
    .end local v12           #ustate:Landroid/content/pm/PackageUserState;
    :cond_f
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1, v13}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 1110
    const/4 v13, 0x0

    const-string v14, "package-restrictions"

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1114
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1115
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1116
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 1120
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1121
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1b0

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    .locals 4
    .parameter "serializer"
    .parameter "bp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1552
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1553
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1554
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1555
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1556
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    if-eqz v1, :cond_0

    .line 1557
    const-string v1, "protection"

    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1562
    :cond_0
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1563
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 1564
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 1565
    const-string v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1566
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_1

    .line 1567
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1569
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1570
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1574
    .end local v0           #pi:Landroid/content/pm/PermissionInfo;
    :cond_2
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1576
    :cond_3
    return-void

    .line 1563
    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_0
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .locals 5
    .parameter "serializer"
    .parameter "userId"
    .parameter "full"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1000
    const-string v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1001
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1002
    .local v2, pir:Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_0

    .line 1003
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 1004
    .local v1, pa:Lcom/android/server/pm/PreferredActivity;
    const-string v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1005
    invoke-virtual {v1, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1006
    const-string v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1009
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pa:Lcom/android/server/pm/PreferredActivity;
    :cond_0
    const-string v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    return-void
.end method


.method static synthetic access$invoke-getAllUsers-2e2378(Lcom/android/server/pm/Settings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
