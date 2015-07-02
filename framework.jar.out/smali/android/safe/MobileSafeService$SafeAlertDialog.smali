.class public final Landroid/safe/MobileSafeService$SafeAlertDialog;
.super Landroid/app/AlertDialog;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SafeAlertDialog"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Landroid/safe/MobileSafeService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 631
    iput-object p1, p0, Landroid/safe/MobileSafeService$SafeAlertDialog;->this$0:Landroid/safe/MobileSafeService;

    .line 632
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 633
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .prologue
    .line 637
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 638
    invoke-virtual {p0}, Landroid/safe/MobileSafeService$SafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020270

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 639
    return-void
.end method
