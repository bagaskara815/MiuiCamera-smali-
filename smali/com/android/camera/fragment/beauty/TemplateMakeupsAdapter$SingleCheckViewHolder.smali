.class public Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TemplateMakeupsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleCheckViewHolder"
.end annotation


# instance fields
.field public itemView:Landroid/view/View;

.field public mAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

.field public mBase:Landroid/widget/ImageView;

.field public mIndicator:Landroid/widget/ImageView;

.field public mTitle:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;Landroid/view/View;Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    const p1, 0x7f0a0277

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mBase:Landroid/widget/ImageView;

    const p1, 0x7f0a0279

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0278

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mIndicator:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$100(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->onItemHolderClick(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$100(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$202(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;I)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$102(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;I)I

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    .line 7
    invoke-static {p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$300(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$200(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    .line 9
    invoke-static {v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$300(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$100(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;

    if-eqz p1, :cond_1

    .line 10
    iget-object v1, p1, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mIndicator:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    iget-object v0, v0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$500(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$400(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$100(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {v1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$100(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TemplateMakeupsAdapter"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$200(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->onItemHolderClick(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;)V

    return-void
.end method

.method public setDataToView(Lcom/android/camera/data/data/TypeItem;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {v3}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$100(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result v3

    const/4 v4, 0x0

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mBase:Landroid/widget/ImageView;

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getImageResource()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getModeDrawableRes(Landroid/content/Context;I)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->getTextResource()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getTintResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->mIndicator:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter$SingleCheckViewHolder;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->access$100(Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;)I

    move-result p0

    if-ne p2, p0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
