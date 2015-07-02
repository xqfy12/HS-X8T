.class Landroid/webkit/CallbackProxy$3;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CallbackProxy;->getScreenBrightnessForResume()V
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
    .line 267
    iput-object p1, p0, Landroid/webkit/CallbackProxy$3;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Landroid/webkit/CallbackProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy$3;->this$0:Landroid/webkit/CallbackProxy;

    #getter for: Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/CallbackProxy;->access$500(Landroid/webkit/CallbackProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/webkit/CallbackProxy;->access$402(I)I

    .line 273
    iget-object v1, p0, Landroid/webkit/CallbackProxy$3;->this$0:Landroid/webkit/CallbackProxy;

    #getter for: Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/CallbackProxy;->access$500(Landroid/webkit/CallbackProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/webkit/CallbackProxy;->access$102(I)I

    .line 274
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/webkit/CallbackProxy;->access$302(Z)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy$3;->this$0:Landroid/webkit/CallbackProxy;

    invoke-static {}, Landroid/webkit/CallbackProxy;->access$100()I

    move-result v2

    #calls: Landroid/webkit/CallbackProxy;->adjustScreenBrightness(I)V
    invoke-static {v1, v2}, Landroid/webkit/CallbackProxy;->access$200(Landroid/webkit/CallbackProxy;I)V

    .line 280
    :cond_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
