.class public final synthetic Lcom/sec/android/app/sbrowser/common/livedata/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/livedata/Preference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/livedata/Preference$asFlow$1;->g(Lcom/sec/android/app/sbrowser/common/livedata/Preference;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1$observer$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentResolver;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->f(Landroid/content/ContentResolver;Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1$observer$1;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
