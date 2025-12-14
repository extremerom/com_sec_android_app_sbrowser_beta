.class Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientAppDataRegister:Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mCache:Ljava/util/Set;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mClientAppDataRegister:Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;

    return-void
.end method

.method private combine(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;
    .locals 0

    const-string p0, ":"

    invoke-static {p1, p0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public register(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 7

    const-string v0, "TWAClientAppData"

    const-string v1, "Invalid details for client package : "

    const-string v2, "Registering "

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mCache:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->combine(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mCache:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->combine(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->mClientAppDataRegister:Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v4, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;->registerPackageForOrigin(ILjava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Couldn\'t find name for client package : "

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
