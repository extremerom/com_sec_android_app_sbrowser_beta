.class public final synthetic Lcom/sec/android/app/sbrowser/common/livedata/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/c;->a:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/c;->a:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->b(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
