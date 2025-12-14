.class Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->initKeywordLayout()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$5;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$5;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->adjustScreenForKeyboard()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$5;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->i(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Z

    move-result p0

    return p0
.end method
