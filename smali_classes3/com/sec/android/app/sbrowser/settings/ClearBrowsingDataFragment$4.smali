.class Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->j(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->j(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)[Z

    move-result-object v1

    aget-boolean v1, v1, p2

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    const v1, 0x7f0b0234

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->i(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setBackgroundResourceForItems(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->i(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getDialogOptions()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    move-result-object p1

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->m(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->m(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->m(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->s(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    return v2
.end method
