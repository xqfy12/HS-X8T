.class abstract Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;
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
    name = "SingleShowMessageAction"
.end annotation


# instance fields
.field private final mBackgroundResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "messageResId"
    .parameter "backgroundResId"

    .prologue
    .line 638
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->mMessageResId:I

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->mMessage:Ljava/lang/CharSequence;

    .line 641
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->mBackgroundResId:I

    .line 642
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 657
    const v2, 0x109004b

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 658
    .local v1, v:Landroid/view/View;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->mBackgroundResId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->setBackground(Landroid/view/View;I)V

    .line 662
    :cond_0
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 663
    .local v0, messageView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 664
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :goto_0
    const-string v2, "ro.hmct.hisense.style"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    :cond_1
    return-object v1

    .line 667
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SingleShowMessageAction;->mMessageResId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 668
    const/high16 v2, 0x4160

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 648
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
    .line 651
    if-lez p2, :cond_0

    .line 652
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 654
    :cond_0
    return-void
.end method
