.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;->fetchIcons(Landroid/content/Context;Ljava/util/Map;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Landroid/content/SharedPreferences;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$1;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
