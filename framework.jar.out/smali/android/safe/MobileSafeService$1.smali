.class Landroid/safe/MobileSafeService$1;
.super Ljava/lang/Object;
.source "MobileSafeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/safe/MobileSafeService;


# direct methods
.method constructor <init>(Landroid/safe/MobileSafeService;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Landroid/safe/MobileSafeService$1;->this$0:Landroid/safe/MobileSafeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "MobileSafeService"

    const-string v1, "Mobile Safe client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Landroid/safe/MobileSafeService$1;->this$0:Landroid/safe/MobileSafeService;

    const/4 v1, 0x0

    #setter for: Landroid/safe/MobileSafeService;->mClient:Landroid/safe/IMobileSafeClient;
    invoke-static {v0, v1}, Landroid/safe/MobileSafeService;->access$602(Landroid/safe/MobileSafeService;Landroid/safe/IMobileSafeClient;)Landroid/safe/IMobileSafeClient;

    .line 146
    return-void
.end method
