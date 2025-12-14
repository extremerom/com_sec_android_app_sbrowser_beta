.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->initializeBottomBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$5;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$5;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$5;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$5;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getItemCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->w(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$5;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onDeleteItems()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$5;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->pressDeleteBottomBarButtonForSALogging(J)V

    :cond_2
    :goto_0
    return-void
.end method
