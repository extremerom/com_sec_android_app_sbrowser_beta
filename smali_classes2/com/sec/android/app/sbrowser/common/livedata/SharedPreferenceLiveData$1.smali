.class Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData$1;->this$0:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData$1;->this$0:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->c(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData$1;->this$0:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->b(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->d(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
