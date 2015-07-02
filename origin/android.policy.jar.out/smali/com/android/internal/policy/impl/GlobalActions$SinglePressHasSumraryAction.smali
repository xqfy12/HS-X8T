.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressHasSumraryAction"
.end annotation


# instance fields
.field private final mBackgroundResId:I

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I

.field private final mStatus:Ljava/lang/CharSequence;

.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(III)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "statusResId"

    .prologue
    const/4 v0, 0x0

    .line 783
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mIconResId:I

    .line 785
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mMessageResId:I

    .line 786
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mStatusResId:I

    .line 787
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mMessage:Ljava/lang/CharSequence;

    .line 788
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mStatus:Ljava/lang/CharSequence;

    .line 789
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mBackgroundResId:I

    .line 790
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "statusResId"
    .parameter "backgroundResId"

    .prologue
    const/4 v0, 0x0

    .line 775
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mIconResId:I

    .line 777
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mMessageResId:I

    .line 778
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mStatusResId:I

    .line 779
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mMessage:Ljava/lang/CharSequence;

    .line 780
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mStatus:Ljava/lang/CharSequence;

    .line 781
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mBackgroundResId:I

    .line 782
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 806
    const v4, 0x109004c

    const/4 v5, 0x0

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 807
    .local v3, v:Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 808
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 809
    .local v1, messageView:Landroid/widget/TextView;
    const v4, 0x102029d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 810
    .local v2, statusView:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 812
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mStatus:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 817
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    :goto_1
    const-string v4, "ro.hmct.hisense.style"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 824
    const v4, -0x7f7f80

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 827
    :cond_0
    return-object v3

    .line 814
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mMessageResId:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 819
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressHasSumraryAction;->mStatusResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method

.method public setBackground(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "resId"

    .prologue
    .line 800
    if-lez p2, :cond_0

    .line 801
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 803
    :cond_0
    return-void
.end method
