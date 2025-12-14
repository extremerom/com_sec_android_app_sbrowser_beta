.class Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/N0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$8;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$8;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->adjustScreenForKeyboard()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$8;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->i(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Z

    move-result p0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
