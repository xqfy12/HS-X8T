.class public final Landroid/safe/SafeFeature;
.super Ljava/lang/Object;
.source "SafeFeature.java"


# static fields
.field public static final ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string/jumbo v0, "persist.sys.hmct.safe.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
