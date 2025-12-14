.class Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onChildClick : onClick position : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NoticeListFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->h(Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;)Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getTitleByPosition(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->h(Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;)Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListAdapter;->getTextByPosition(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "text"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    const-class v0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/notice/NoticeListFragment;

    const p2, 0x7f140cb2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
