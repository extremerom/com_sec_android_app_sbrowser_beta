.class public Lcom/google/firebase/FirebaseCommonRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v0, LJ7/b;

    invoke-static {v0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/components/k;

    const-class v3, LJ7/a;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v2, LA9/b;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, LA9/b;-><init>(I)V

    iput-object v2, v1, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v1}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/firebase/components/r;

    const-class v2, Lcom/google/firebase/annotations/concurrent/Background;

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/components/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class v2, Lz7/e;

    const-class v3, Lz7/g;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/components/a;

    const-class v6, Lz7/c;

    invoke-direct {v3, v6, v2}, Lcom/google/firebase/components/a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    const-class v2, Lp7/f;

    invoke-static {v2}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v2, Lcom/google/firebase/components/k;

    const-class v6, Lz7/d;

    invoke-direct {v2, v4, v5, v6}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v3, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v2, Lcom/google/firebase/components/k;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v4, v0}, Lcom/google/firebase/components/k;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v3, v2}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v0, Lcom/google/firebase/components/k;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/firebase/components/k;-><init>(Lcom/google/firebase/components/r;II)V

    invoke-virtual {v3, v0}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v2, 0x19

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, v3, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v3}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fire-android"

    invoke-static {v1, v0}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "fire-core"

    const-string v1, "20.3.1"

    invoke-static {v0, v1}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-name"

    invoke-static {v1, v0}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-model"

    invoke-static {v1, v0}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-brand"

    invoke-static {v1, v0}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lf1/g;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-string v1, "android-target-sdk"

    invoke-static {v1, v0}, LG5/C3;->b(Ljava/lang/String;Lf1/g;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lf1/g;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-string v1, "android-min-sdk"

    invoke-static {v1, v0}, LG5/C3;->b(Ljava/lang/String;Lf1/g;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lf1/g;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-string v1, "android-platform"

    invoke-static {v1, v0}, LG5/C3;->b(Ljava/lang/String;Lf1/g;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lf1/g;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lf1/g;-><init>(I)V

    const-string v1, "android-installer"

    invoke-static {v1, v0}, LG5/C3;->b(Ljava/lang/String;Lf1/g;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v0, Ldb/e;->e:Ldb/e;

    invoke-virtual {v0}, Ldb/e;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "kotlin"

    invoke-static {v1, v0}, LG5/C3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method
