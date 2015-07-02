.class Landroid/safe/MobileSafeService$2;
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
    .line 560
    iput-object p1, p0, Landroid/safe/MobileSafeService$2;->this$0:Landroid/safe/MobileSafeService;

    iput-object p2, p0, Landroid/safe/MobileSafeService$2;->val$cb:Landroid/widget/CheckBox;

    iput-object p3, p0, Landroid/safe/MobileSafeService$2;->val$permName:Ljava/lang/String;

    iput p4, p0, Landroid/safe/MobileSafeService$2;->val$uid:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 562
    iget-object v0, p0, Landroid/safe/MobileSafeService$2;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Landroid/safe/MobileSafeService$2;->this$0:Landroid/safe/MobileSafeService;

    iget-object v1, p0, Landroid/safe/MobileSafeService$2;->val$permName:Ljava/lang/String;

    iget v2, p0, Landroid/safe/MobileSafeService$2;->val$uid:I

    invoke-virtual {v0, v1, v2}, Landroid/safe/MobileSafeService;->grantPermission(Ljava/lang/String;I)V

    .line 565
    :cond_0
    iget-object v0, p0, Landroid/safe/MobileSafeService$2;->this$0:Landroid/safe/MobileSafeService;

    const/4 v1, 0x1

    #calls: Landroid/safe/MobileSafeService;->confirmPermission(Z)V
    invoke-static {v0, v1}, Landroid/safe/MobileSafeService;->access$700(Landroid/safe/MobileSafeService;Z)V

    .line 566
    iget-object v0, p0, Landroid/safe/MobileSafeService$2;->this$0:Landroid/safe/MobileSafeService;

    const/4 v1, 0x0

    #setter for: Landroid/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/safe/MobileSafeService;->access$402(Landroid/safe/MobileSafeService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 567
    return-void
.end method
