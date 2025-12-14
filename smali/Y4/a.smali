.class public final LY4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lb5/g;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/clearcut/o0;

.field public final g:LN5/d;

.field public final h:Lj5/a;

.field public final i:Lcom/google/android/gms/internal/clearcut/B0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LA5/v;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LA5/v;-><init>(I)V

    new-instance v2, Lb5/g;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v2, LY4/a;->j:Lb5/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    new-instance v0, LN5/d;

    new-instance v1, Lc5/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    sget-object v3, LY4/a;->j:Lb5/g;

    invoke-direct {v0, p1, v3, v2, v1}, Lb5/j;-><init>(Landroid/content/Context;Lb5/g;Lb5/c;Lc5/a;)V

    sget-object v1, Lj5/a;->a:Lj5/a;

    new-instance v2, Lcom/google/android/gms/internal/clearcut/B0;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/clearcut/B0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, LY4/a;->e:I

    sget-object v4, Lcom/google/android/gms/internal/clearcut/o0;->zzbhk:Lcom/google/android/gms/internal/clearcut/o0;

    iput-object v4, p0, LY4/a;->f:Lcom/google/android/gms/internal/clearcut/o0;

    iput-object p1, p0, LY4/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LY4/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v5, "ClearcutLogger"

    const-string v6, "This can\'t happen."

    invoke-static {v5, v6, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput v4, p0, LY4/a;->c:I

    iput v3, p0, LY4/a;->e:I

    const-string p1, "VISION"

    iput-object p1, p0, LY4/a;->d:Ljava/lang/String;

    iput-object v0, p0, LY4/a;->g:LN5/d;

    iput-object v1, p0, LY4/a;->h:Lj5/a;

    sget-object p1, Lcom/google/android/gms/internal/clearcut/o0;->zzbhk:Lcom/google/android/gms/internal/clearcut/o0;

    iput-object p1, p0, LY4/a;->f:Lcom/google/android/gms/internal/clearcut/o0;

    iput-object v2, p0, LY4/a;->i:Lcom/google/android/gms/internal/clearcut/B0;

    return-void
.end method
