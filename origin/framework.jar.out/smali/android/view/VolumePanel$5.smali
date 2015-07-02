.class Landroid/view/VolumePanel$5;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 587
    const-string v2, "VolumePanel"

    const-string/jumbo v3, "mMoreSwitchListener:onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v2, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mMoreSwitchLL:Landroid/widget/LinearLayout;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 589
    iget-object v2, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mMoreSwitchLL:Landroid/widget/LinearLayout;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mStreamControlsEico:[Landroid/view/VolumePanel$StreamControl;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)[Landroid/view/VolumePanel$StreamControl;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 592
    iget-object v2, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mStreamControlsEico:[Landroid/view/VolumePanel$StreamControl;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)[Landroid/view/VolumePanel$StreamControl;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mStreamControlsEico:[Landroid/view/VolumePanel$StreamControl;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)[Landroid/view/VolumePanel$StreamControl;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 594
    iget-object v2, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mStreamControlsEico:[Landroid/view/VolumePanel$StreamControl;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)[Landroid/view/VolumePanel$StreamControl;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 595
    iget-object v2, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    #getter for: Landroid/view/VolumePanel;->mStreamControlsEico:[Landroid/view/VolumePanel$StreamControl;
    invoke-static {v2}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;)[Landroid/view/VolumePanel$StreamControl;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v3, 0x10203a8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 596
    .local v1, mIV:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 597
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    .end local v1           #mIV:Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    .end local v0           #i:I
    :cond_1
    return-void
.end method
