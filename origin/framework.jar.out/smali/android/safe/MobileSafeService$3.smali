.class Landroid/safe/MobileSafeService$3;
.super Ljava/lang/Object;
.source "MobileSafeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/safe/MobileSafeService;->showConfirmDialog(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/safe/MobileSafeService;

.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$permName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/safe/MobileSafeService;Landroid/widget/CheckBox;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Landroid/safe/MobileSafeService$3;->this$0:Landroid/safe/MobileSafeService;

    iput-object p2, p0, Landroid/safe/MobileSafeService$3;->val$cb:Landroid/widget/CheckBox;

    iput-object p3, p0, Landroid/safe/MobileSafeService$3;->val$permName:Ljava/lang/String;

    iput p4, p0, Landroid/safe/MobileSafeService$3;->val$uid:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 571
    iget-object v0, p0, Landroid/safe/MobileSafeService$3;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/safe/MobileSafeService$3;->this$0:Landroid/safe/MobileSafeService;

    iget-object v1, p0, Landroid/safe/MobileSafeService$3;->val$permName:Ljava/lang/String;

    iget v2, p0, Landroid/safe/MobileSafeService$3;->val$uid:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/safe/MobileSafeService;->revokePermission(Ljava/lang/String;IZZ)V

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/safe/MobileSafeService$3;->this$0:Landroid/safe/MobileSafeService;

    #calls: Landroid/safe/MobileSafeService;->confirmPermission(Z)V
    invoke-static {v0, v4}, Landroid/safe/MobileSafeService;->access$700(Landroid/safe/MobileSafeService;Z)V

    .line 575
    iget-object v0, p0, Landroid/safe/MobileSafeService$3;->this$0:Landroid/safe/MobileSafeService;

    const/4 v1, 0x0

    #setter for: Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/safe/MobileSafeService;->access$402(Landroid/safe/MobileSafeService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 576
    return-void
.end method
