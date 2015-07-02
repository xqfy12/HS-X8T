.class Landroid/webkit/CallbackProxy$2;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CallbackProxy;->adjustScreenBrightnessBackForPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Landroid/webkit/CallbackProxy$2;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Landroid/webkit/CallbackProxy;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/webkit/CallbackProxy$2;->this$0:Landroid/webkit/CallbackProxy;

    invoke-static {}, Landroid/webkit/CallbackProxy;->access$100()I

    move-result v1

    #calls: Landroid/webkit/CallbackProxy;->adjustScreenBrightness(I)V
    invoke-static {v0, v1}, Landroid/webkit/CallbackProxy;->access$200(Landroid/webkit/CallbackProxy;I)V

    .line 257
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/CallbackProxy;->access$002(Z)Z

    .line 259
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/CallbackProxy;->access$302(Z)Z

    .line 260
    return-void
.end method
