.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->r(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result v0

    const-string v1, "SitesSearchBaseUi"

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataNull()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const v0, 0x7f0b0b66

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "onClick position : "

    invoke-static {v2, v3, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-ltz v2, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v2

    const-string v6, "313"

    const-string v7, "3125"

    invoke-static {v6, v7, v3, v4, v5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$000(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->s(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->z(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->N(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->S(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3, v1, p1, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->b0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->V(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->W(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllCheckBox()V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v2

    :goto_1
    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->N(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->U(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    goto/16 :goto_2

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$102(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)I

    goto/16 :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->s(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->K(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->N(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->S(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->N(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->a0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    const/16 p1, 0x12c

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->T(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->L(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->C(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->R(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$200(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result v6

    new-instance p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getCurrentTab()I

    move-result v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;-><init>(Ljava/lang/String;JII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->C(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V

    :cond_b
    :goto_2
    return-void

    :cond_c
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is crossing the bounds"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onClick: no search data : mIsItemClicked = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->r(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
