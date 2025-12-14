.class public final synthetic Lcom/sec/android/app/sbrowser/common/livedata/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/livedata/Preference;

.field public final synthetic b:LPc/y;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/livedata/Preference;LPc/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/b;->a:Lcom/sec/android/app/sbrowser/common/livedata/Preference;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/livedata/b;->b:LPc/y;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/b;->a:Lcom/sec/android/app/sbrowser/common/livedata/Preference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/b;->b:LPc/y;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/Preference$asFlow$1;->f(Lcom/sec/android/app/sbrowser/common/livedata/Preference;LPc/y;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
