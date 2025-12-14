.class public final LQ9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;
.implements Luc/c;
.implements Luc/e;


# static fields
.field public static volatile g:LQ9/a;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQ9/a;->b:Ljava/lang/Object;

    iput-object v0, p0, LQ9/a;->c:Ljava/lang/Object;

    iput-object v0, p0, LQ9/a;->a:Ljava/lang/Object;

    iput-object v0, p0, LQ9/a;->d:Ljava/lang/Object;

    iput-object v0, p0, LQ9/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQ9/a;->e:Ljava/lang/Object;

    iput-object v0, p0, LQ9/a;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQ9/a;->a:Ljava/lang/Object;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, LQ9/a;->b:Ljava/lang/Object;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, LQ9/a;->c:Ljava/lang/Object;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, LQ9/a;->d:Ljava/lang/Object;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQ9/a;->e:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LQ9/a;->f:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static final l(LQ9/a;Lhc/f;Ljava/lang/Object;)Lmc/g;
    .locals 1

    sget-object v0, Lmc/h;->a:Lmc/h;

    iget-object p0, p0, LQ9/a;->c:Ljava/lang/Object;

    check-cast p0, LMb/B;

    invoke-virtual {v0, p2, p0}, Lmc/h;->b(Ljava/lang/Object;LJb/C;)Lmc/g;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported annotation argument: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lmc/j;

    invoke-direct {p1, p0}, Lmc/j;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static synthetic p(LQ9/a;LJ2/i0;Lac/q;ZLjava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v7, p4

    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, p5

    :goto_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, LQ9/a;->o(LJ2/i0;Lac/q;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lic/m;Lec/g;LX4/i;Luc/b;Z)Lac/q;
    .locals 8

    const-string v0, "proto"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcc/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p3, Lgc/h;->a:Lic/g;

    check-cast p0, Lcc/n;

    invoke-static {p0, p1, p2}, Lgc/h;->a(Lcc/n;Lec/g;LX4/i;)Lgc/e;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, LG5/U3;->c(LG5/x3;)Lac/q;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lcc/A;

    if-eqz v0, :cond_3

    sget-object p3, Lgc/h;->a:Lic/g;

    check-cast p0, Lcc/A;

    invoke-static {p0, p1, p2}, Lgc/h;->c(Lcc/A;Lec/g;LX4/i;)Lgc/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {p0}, LG5/U3;->c(LG5/x3;)Lac/q;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    instance-of v0, p0, Lcc/I;

    if-eqz v0, :cond_8

    sget-object v0, Lfc/k;->d:Lic/o;

    const-string v2, "propertySignature"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfc/e;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    sget-object v2, Lac/c;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_7

    const/4 v2, 0x2

    if-eq p3, v2, :cond_6

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    goto :goto_0

    :cond_5
    move-object v2, p0

    check-cast v2, Lcc/I;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, LG5/R3;->c(Lcc/I;Lec/g;LX4/i;ZZZ)Lac/q;

    move-result-object v1

    goto :goto_0

    :cond_6
    iget p0, v0, Lfc/e;->b:I

    const/16 p2, 0x8

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_8

    iget-object p0, v0, Lfc/e;->f:Lfc/c;

    const-string p2, "getSetter(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lfc/c;->c:I

    invoke-interface {p1, p2}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lfc/c;->d:I

    invoke-interface {p1, p0}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lac/q;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lac/q;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget p0, v0, Lfc/e;->b:I

    const/4 p2, 0x4

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_8

    iget-object p0, v0, Lfc/e;->e:Lfc/c;

    const-string p2, "getGetter(...)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lfc/c;->c:I

    invoke-interface {p1, p2}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lfc/c;->d:I

    invoke-interface {p1, p0}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lac/q;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lac/q;-><init>(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-object v1
.end method

.method public static r(Landroid/content/Context;)LQ9/a;
    .locals 2

    const-class v0, LQ9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQ9/a;->g:LQ9/a;

    if-nez v1, :cond_0

    new-instance v1, LQ9/a;

    invoke-direct {v1, p0}, LQ9/a;-><init>(Landroid/content/Context;)V

    sput-object v1, LQ9/a;->g:LQ9/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, LQ9/a;->g:LQ9/a;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmp_app_id"

    iget-object p2, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast p2, Lp7/f;

    invoke-virtual {p2}, Lp7/f;->a()V

    iget-object p2, p2, Lp7/f;->c:Lp7/g;

    iget-object p2, p2, Lp7/g;->b:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmsv"

    iget-object p2, p0, LQ9/a;->b:Ljava/lang/Object;

    check-cast p2, LA7/e;

    monitor-enter p2

    :try_start_0
    iget v0, p2, LA7/e;->e:I

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p2, v0}, LA7/e;->e(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p2, LA7/e;->e:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget v0, p2, LA7/e;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver"

    iget-object p2, p0, LQ9/a;->b:Ljava/lang/Object;

    check-cast p2, LA7/e;

    invoke-virtual {p2}, LA7/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver_name"

    iget-object p2, p0, LQ9/a;->b:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, LA7/e;

    monitor-enter v0

    :try_start_1
    iget-object p2, v0, LA7/e;->d:Ljava/io/Serializable;

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-virtual {v0}, LA7/e;->g()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_1
    iget-object p2, v0, LA7/e;->d:Ljava/io/Serializable;

    check-cast p2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "firebase-app-name-hash"

    iget-object p2, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast p2, Lp7/f;

    invoke-virtual {p2}, Lp7/f;->a()V

    iget-object p2, p2, Lp7/f;->b:Ljava/lang/String;

    const-string v0, "SHA-1"

    :try_start_2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    const/16 v0, 0xb

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const-string p2, "[HASH-ERROR]"

    :goto_2
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object p1, p0, LQ9/a;->f:Ljava/lang/Object;

    check-cast p1, LD7/f;

    check-cast p1, LD7/e;

    invoke-virtual {p1}, LD7/e;->d()LR5/p;

    move-result-object p1

    invoke-static {p1}, LG5/G;->b(LR5/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD7/a;

    iget-object p1, p1, LD7/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Goog-Firebase-Installations-Auth"

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    const-string p1, "FirebaseMessaging"

    const-string p2, "FIS auth token is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :goto_3
    const-string p2, "FirebaseMessaging"

    const-string v0, "Failed to get FIS auth token"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const-string p1, "appid"

    iget-object p2, p0, LQ9/a;->f:Ljava/lang/Object;

    check-cast p2, LD7/f;

    check-cast p2, LD7/e;

    invoke-virtual {p2}, LD7/e;->c()LR5/p;

    move-result-object p2

    invoke-static {p2}, LG5/G;->b(LR5/h;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fcm-23.1.2"

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LQ9/a;->e:Ljava/lang/Object;

    check-cast p1, LC7/a;

    invoke-interface {p1}, LC7/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz7/g;

    iget-object p0, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast p0, LC7/a;

    invoke-interface {p0}, LC7/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ7/b;

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    check-cast p1, Lz7/c;

    invoke-virtual {p1}, Lz7/c;->a()Lz7/f;

    move-result-object p1

    sget-object p2, Lz7/f;->NONE:Lz7/f;

    if-eq p1, p2, :cond_3

    const-string p2, "Firebase-Client-Log-Type"

    invoke-virtual {p1}, Lz7/f;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Firebase-Client"

    invoke-virtual {p0}, LJ7/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_6
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)LR5/p;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, LQ9/a;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, LQ9/a;->c:Ljava/lang/Object;

    check-cast p0, LZ4/a;

    invoke-virtual {p0, p3}, LZ4/a;->a(Landroid/os/Bundle;)LR5/p;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, LR5/p;

    invoke-direct {p1}, LR5/p;-><init>()V

    invoke-virtual {p1, p0}, LR5/p;->o(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, LL8/a;

    invoke-direct {v0, p1, p2}, LL8/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, LQ9/a;->b:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "sqlcipher_key"

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object v0, p0, LQ9/a;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "need an Android context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcc/T;Lec/g;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfc/k;->f:Lic/o;

    invoke-virtual {p1, v0}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getExtension(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LQ9/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {v2, v1, p2}, Lcom/google/android/gms/internal/auth/j;->i(Lcc/h;Lec/g;)LKb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(LJ2/i0;Lic/m;Luc/b;)Ljava/util/List;
    .locals 7

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    iget-object v2, p1, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v2, LX4/i;

    invoke-static {p2, v1, v2, p3, v0}, LQ9/a;->q(Lic/m;Lec/g;LX4/i;Luc/b;Z)Lac/q;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v2, Lac/q;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lac/q;->a:Ljava/lang/String;

    const-string v0, "@0"

    invoke-static {p3, p2, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lac/q;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, LQ9/a;->p(LQ9/a;LJ2/i0;Lac/q;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public c(LJ2/i0;Lcc/v;)Ljava/util/List;
    .locals 9

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p2, Lcc/v;->d:I

    iget-object v0, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v0, Lec/g;

    invoke-interface {v0, p2}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Luc/w;

    iget-object v0, v0, Luc/w;->g:Lhc/b;

    invoke-virtual {v0}, Lhc/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lac/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lac/q;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3c

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, LQ9/a;->p(LQ9/a;LJ2/i0;Lac/q;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d(LJ2/i0;Lcc/I;Lyc/w;)Ljava/lang/Object;
    .locals 7

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Luc/b;->PROPERTY_GETTER:Luc/b;

    sget-object v6, Lac/a;->b:Lac/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, LQ9/a;->v(LJ2/i0;Lcc/I;Luc/b;Lyc/w;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    iget-object v0, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x38000000

    :try_start_0
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "MSG_KEY_BACKUP_PATH"

    const-string v4, "MSG_KEY_DOWNLOAD_PATH"

    invoke-static {v3, p1, v4, p2}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "MSG_KEY_FILE_DESCRIPTOR"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LQ9/a;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] downloadFile MSG_REQUEST_FILE_DOWNLOAD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RecordDataHelper"

    invoke-static {v2, p1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e8

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, LQ9/a;->e:Ljava/lang/Object;

    check-cast v2, Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast p2, Landroid/os/Messenger;

    invoke-virtual {p0, p2, p1}, LQ9/a;->z(Landroid/os/Messenger;Landroid/os/Message;)V

    const-string p1, "SUCCESS"

    iget-object p0, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public e(LJ2/i0;Lic/m;Luc/b;)Ljava/util/List;
    .locals 10

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Luc/b;->PROPERTY:Luc/b;

    if-ne p3, v0, :cond_0

    check-cast p2, Lcc/I;

    sget-object p3, Lac/b;->PROPERTY:Lac/b;

    invoke-virtual {p0, p1, p2, p3}, LQ9/a;->w(LJ2/i0;Lcc/I;Lac/b;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    iget-object v2, p1, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v2, LX4/i;

    invoke-static {p2, v1, v2, p3, v0}, LQ9/a;->q(Lic/m;Lec/g;LX4/i;Luc/b;Z)Lac/q;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3c

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, LQ9/a;->p(LQ9/a;LJ2/i0;Lac/q;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f(LJ2/i0;Lic/m;Luc/b;ILcc/b0;)Ljava/util/List;
    .locals 8

    const-string p5, "callableProto"

    invoke-static {p2, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "kind"

    invoke-static {p3, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast p5, Lec/g;

    iget-object v0, p1, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v0, LX4/i;

    const/4 v1, 0x0

    invoke-static {p2, p5, v0, p3, v1}, LQ9/a;->q(Lic/m;Lec/g;LX4/i;Luc/b;Z)Lac/q;

    move-result-object p3

    if-eqz p3, :cond_6

    instance-of p5, p2, Lcc/A;

    const/16 v0, 0x40

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    check-cast p2, Lcc/A;

    invoke-virtual {p2}, Lcc/A;->n()Z

    move-result p5

    if-nez p5, :cond_0

    iget p2, p2, Lcc/A;->c:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    instance-of p5, p2, Lcc/I;

    if-eqz p5, :cond_2

    check-cast p2, Lcc/I;

    invoke-virtual {p2}, Lcc/I;->n()Z

    move-result p5

    if-nez p5, :cond_0

    iget p2, p2, Lcc/I;->c:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_2
    instance-of p5, p2, Lcc/n;

    if-eqz p5, :cond_5

    move-object p2, p1

    check-cast p2, Luc/w;

    sget-object p5, Lcc/j;->ENUM_CLASS:Lcc/j;

    iget-object v3, p2, Luc/w;->h:Lcc/j;

    if-ne v3, p5, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    iget-boolean p2, p2, Luc/w;->i:Z

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    add-int/2addr p4, v1

    new-instance v3, Lac/q;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lac/q;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lac/q;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3c

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, LQ9/a;->p(LQ9/a;LJ2/i0;Lac/q;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public g(Luc/w;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LJ2/i0;->d:Ljava/lang/Object;

    check-cast v0, LJb/S;

    instance-of v1, v0, Lac/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lac/p;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lac/p;->a:LOb/b;

    :cond_1
    if-eqz v2, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v2, LOb/b;->a:Ljava/lang/Class;

    const-string v1, "klass"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lbd/e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v1}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v2

    invoke-static {v2}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v3

    new-instance v4, LOb/a;

    invoke-direct {v4, v1}, LOb/a;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p0, v3, v4, p1}, LQ9/a;->u(Lhc/b;LOb/a;Ljava/util/List;)LD4/d;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3, v1, v2}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class for loading annotations is not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Luc/w;->g:Lhc/b;

    invoke-virtual {p1}, Lhc/b;->a()Lhc/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(LJ2/i0;Lcc/I;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lac/b;->BACKING_FIELD:Lac/b;

    invoke-virtual {p0, p1, p2, v0}, LQ9/a;->w(LJ2/i0;Lcc/I;Lac/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcc/Y;Lec/g;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "proto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lfc/k;->h:Lic/o;

    invoke-virtual {p1, v0}, Lic/m;->i(Lic/o;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getExtension(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LQ9/a;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {v2, v1, p2}, Lcom/google/android/gms/internal/auth/j;->i(Lcc/h;Lec/g;)LKb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public installApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string p0, "FAIL"

    return-object p0

    :cond_0
    const-string v0, "MSG_KEY_PACKAGE_NAME"

    invoke-static {v0, p1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, LQ9/a;->e:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast p1, Landroid/os/Messenger;

    invoke-virtual {p0, p1, v0}, LQ9/a;->z(Landroid/os/Messenger;Landroid/os/Message;)V

    iget-object p0, p0, LQ9/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public j(LJ2/i0;Lcc/I;Lyc/w;)Ljava/lang/Object;
    .locals 7

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Luc/b;->PROPERTY:Luc/b;

    sget-object v6, Lac/a;->c:Lac/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, LQ9/a;->v(LJ2/i0;Lcc/I;Luc/b;Lyc/w;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public k(LJ2/i0;Lcc/I;)Ljava/util/List;
    .locals 1

    const-string v0, "proto"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lac/b;->DELEGATE_FIELD:Lac/b;

    invoke-virtual {p0, p1, p2, v0}, LQ9/a;->w(LJ2/i0;Lcc/I;Lac/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized m()LI3/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LQ9/a;->y()LW6/b;

    move-result-object v0

    iput-object v0, p0, LQ9/a;->d:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, LQ9/a;->x()LB3/c;

    move-result-object v0

    iput-object v0, p0, LQ9/a;->f:Ljava/lang/Object;

    new-instance v0, LI3/c;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LI3/c;-><init>(IZ)V

    iget-object v1, p0, LQ9/a;->f:Ljava/lang/Object;

    check-cast v1, LB3/c;

    iput-object v1, v0, LI3/c;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public n(LR5/p;)LR5/p;
    .locals 3

    new-instance v0, LA2/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA2/f;-><init>(I)V

    new-instance v1, LAa/a;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, LR5/p;->g(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;

    move-result-object p0

    return-object p0
.end method

.method public o(LJ2/i0;Lac/q;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 8

    iget-object v0, p0, LQ9/a;->f:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lec/f;

    iget-object v0, p0, LQ9/a;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lo3/f;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-static/range {v1 .. v7}, LG5/Q3;->c(LJ2/i0;ZZLjava/lang/Boolean;ZLo3/f;Lec/f;)LOb/b;

    move-result-object p3

    if-nez p3, :cond_2

    instance-of p3, p1, Luc/w;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    check-cast p1, Luc/w;

    iget-object p1, p1, LJ2/i0;->d:Ljava/lang/Object;

    check-cast p1, LJb/S;

    instance-of p3, p1, Lac/p;

    if-eqz p3, :cond_0

    check-cast p1, Lac/p;

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lac/p;->a:LOb/b;

    move-object p3, p1

    goto :goto_1

    :cond_1
    move-object p3, p4

    :cond_2
    :goto_1
    sget-object p1, Lfb/v;->a:Lfb/v;

    if-nez p3, :cond_3

    return-object p1

    :cond_3
    iget-object p0, p0, LQ9/a;->b:Ljava/lang/Object;

    check-cast p0, Lxc/e;

    invoke-virtual {p0, p3}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lac/d;

    iget-object p0, p0, Lac/d;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p0

    :goto_2
    return-object p1
.end method

.method public s(Lhc/b;)Z
    .locals 4

    invoke-virtual {p1}, Lhc/b;->e()Lhc/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lhc/b;->f()Lhc/f;

    move-result-object v0

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Container"

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, LQ9/a;->f:Ljava/lang/Object;

    check-cast v0, Lec/f;

    iget-object p0, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast p0, Lo3/f;

    invoke-static {p0, p1, v0}, LG5/T3;->c(Lo3/f;Lhc/b;Lec/f;)LOb/b;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, LFb/a;->a:Ljava/util/LinkedHashSet;

    iget-object p0, p0, LOb/b;->a:Ljava/lang/Class;

    const-string p1, "klass"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-static {p0}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object p0

    move p1, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lbd/e;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v0

    invoke-static {v0}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v0

    sget-object v3, LSb/w;->b:Lhc/b;

    invoke-virtual {v0, v3}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public t(Lhc/b;LJb/S;Ljava/util/List;)LD4/d;
    .locals 8

    const-string v0, "result"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQ9/a;->c:Ljava/lang/Object;

    check-cast v0, LMb/B;

    iget-object v1, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/messaging/q;

    invoke-static {v0, p1, v1}, LJb/y;->f(LJb/C;Lhc/b;Lcom/google/firebase/messaging/q;)LJb/f;

    move-result-object v4

    new-instance v0, LD4/d;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, LD4/d;-><init>(LQ9/a;LJb/f;Lhc/b;Ljava/util/List;LJb/S;)V

    return-object v0
.end method

.method public u(Lhc/b;LOb/a;Ljava/util/List;)LD4/d;
    .locals 1

    const-string v0, "result"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LFb/a;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LQ9/a;->t(Lhc/b;LJb/S;Ljava/util/List;)LD4/d;

    move-result-object p0

    return-object p0
.end method

.method public v(LJ2/i0;Lcc/I;Luc/b;Lyc/w;Lsb/n;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lec/e;->B:Lec/b;

    iget v1, p2, Lcc/I;->d:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2}, Lgc/h;->d(Lcc/I;)Z

    move-result v6

    iget-object v0, p0, LQ9/a;->f:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lec/f;

    iget-object v0, p0, LQ9/a;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lo3/f;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, LG5/Q3;->c(LJ2/i0;ZZLjava/lang/Boolean;ZLo3/f;Lec/f;)LOb/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Luc/w;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Luc/w;

    iget-object v0, v0, LJ2/i0;->d:Ljava/lang/Object;

    check-cast v0, LJb/S;

    instance-of v2, v0, Lac/p;

    if-eqz v2, :cond_0

    check-cast v0, Lac/p;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lac/p;->a:LOb/b;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v2, v0, LOb/b;->b:Lbc/c;

    iget-object v2, v2, Lbc/c;->d:Ljava/lang/Object;

    check-cast v2, Lec/f;

    sget-object v3, Lac/f;->e:Lec/f;

    const-string v4, "version"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v3, Lec/a;->b:I

    iget v5, v3, Lec/a;->c:I

    iget v3, v3, Lec/a;->d:I

    invoke-virtual {v2, v4, v5, v3}, Lec/a;->a(III)Z

    move-result v2

    iget-object v3, p1, LJ2/i0;->b:Ljava/lang/Object;

    check-cast v3, Lec/g;

    iget-object p1, p1, LJ2/i0;->c:Ljava/lang/Object;

    check-cast p1, LX4/i;

    invoke-static {p2, v3, p1, p3, v2}, LQ9/a;->q(Lic/m;Lec/g;LX4/i;Luc/b;Z)Lac/q;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    iget-object p0, p0, LQ9/a;->b:Ljava/lang/Object;

    check-cast p0, Lxc/e;

    invoke-virtual {p0, v0}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p5, p0, p1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    :cond_5
    invoke-static {p4}, LGb/u;->a(Lyc/w;)Z

    move-result p1

    if-eqz p1, :cond_9

    check-cast p0, Lmc/g;

    instance-of p1, p0, Lmc/d;

    if-eqz p1, :cond_6

    new-instance p1, Lmc/z;

    check-cast p0, Lmc/d;

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Lmc/z;-><init>(B)V

    :goto_2
    move-object p0, p1

    goto :goto_3

    :cond_6
    instance-of p1, p0, Lmc/w;

    if-eqz p1, :cond_7

    new-instance p1, Lmc/z;

    check-cast p0, Lmc/w;

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Lmc/z;-><init>(S)V

    goto :goto_2

    :cond_7
    instance-of p1, p0, Lmc/k;

    if-eqz p1, :cond_8

    new-instance p1, Lmc/z;

    check-cast p0, Lmc/k;

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Lmc/z;-><init>(I)V

    goto :goto_2

    :cond_8
    instance-of p1, p0, Lmc/u;

    if-eqz p1, :cond_9

    new-instance p1, Lmc/z;

    check-cast p0, Lmc/u;

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lmc/z;-><init>(J)V

    goto :goto_2

    :cond_9
    :goto_3
    return-object p0
.end method

.method public w(LJ2/i0;Lcc/I;Lac/b;)Ljava/util/List;
    .locals 12

    sget-object v2, Lec/e;->B:Lec/b;

    iget v4, p2, Lcc/I;->d:I

    invoke-virtual {v2, v4}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {p2}, Lgc/h;->d(Lcc/I;)Z

    move-result v10

    sget-object v2, Lac/b;->PROPERTY:Lac/b;

    sget-object v11, Lfb/v;->a:Lfb/v;

    if-ne p3, v2, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p1, LJ2/i0;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lec/g;

    iget-object v0, p1, LJ2/i0;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LX4/i;

    const/16 v8, 0x28

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LG5/R3;->d(Lcc/I;Lec/g;LX4/i;ZZI)Lac/q;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v11

    :cond_0
    const/16 v6, 0x8

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v9

    move v5, v10

    invoke-static/range {v0 .. v6}, LQ9/a;->p(LQ9/a;LJ2/i0;Lac/q;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v2, p1, LJ2/i0;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lec/g;

    iget-object v2, p1, LJ2/i0;->c:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, LX4/i;

    const/16 v8, 0x30

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LG5/R3;->d(Lcc/I;Lec/g;LX4/i;ZZI)Lac/q;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v11

    :cond_2
    iget-object v3, v2, Lac/q;->a:Ljava/lang/String;

    const-string v4, "$delegate"

    invoke-static {v3, v4}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v4, Lac/b;->DELEGATE_FIELD:Lac/b;

    if-ne p3, v4, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eq v3, v0, :cond_4

    return-object v11

    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, LQ9/a;->o(LJ2/i0;Lac/q;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public x()LB3/c;
    .locals 6

    :try_start_0
    iget-object v0, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast v0, LW6/b;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, LQ9/a;->b:Ljava/lang/Object;

    check-cast v1, LL8/a;

    invoke-static {v1, v0}, LX4/i;->j(LL8/a;LW6/b;)LX4/i;

    move-result-object v0

    new-instance v1, LB3/c;

    iget-object v0, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, Lc7/x0;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/y;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-virtual {v0, v2}, Lc7/x0;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/w;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    invoke-static {v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->d(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    check-cast v2, Lc7/u0;

    invoke-direct {v1, v2}, LB3/c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "c"

    const-string v2, "cannot decrypt keyset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, LQ9/a;->b:Ljava/lang/Object;

    check-cast v0, LL8/a;

    invoke-virtual {v0}, LL8/a;->t()[B

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object v1

    invoke-static {v0, v1}, Lc7/x0;->t([BLcom/google/crypto/tink/shaded/protobuf/o;)Lc7/x0;

    move-result-object v0

    invoke-virtual {v0}, Lc7/x0;->p()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, LB3/c;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/y;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-virtual {v0, v2}, Lc7/x0;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/w;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    invoke-static {v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->d(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    check-cast v2, Lc7/u0;

    invoke-direct {v1, v2}, LB3/c;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "empty keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string v1, "c"

    const-string v2, "keyset not found, will generate a new one"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, LQ9/a;->e:Ljava/lang/Object;

    check-cast v0, LV6/g;

    if-eqz v0, :cond_9

    new-instance v0, LB3/c;

    invoke-static {}, Lc7/x0;->s()Lc7/u0;

    move-result-object v1

    invoke-direct {v0, v1}, LB3/c;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, LQ9/a;->e:Ljava/lang/Object;

    check-cast v2, LV6/g;

    monitor-enter v0

    :try_start_3
    iget-object v2, v2, LV6/g;->a:Lc7/q0;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0, v2}, LB3/c;->p(Lc7/q0;)Lc7/w0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/x0;

    invoke-static {v1, v2}, Lc7/x0;->n(Lc7/x0;Lc7/w0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v0

    invoke-virtual {v0}, LB3/c;->m()LX4/i;

    move-result-object v1

    iget-object v1, v1, LX4/i;->b:Ljava/lang/Object;

    check-cast v1, Lc7/x0;

    invoke-static {v1}, LV6/o;->a(Lc7/x0;)Lc7/C0;

    move-result-object v1

    invoke-virtual {v1}, Lc7/C0;->o()Lc7/B0;

    move-result-object v1

    invoke-virtual {v1}, Lc7/B0;->q()I

    move-result v1

    monitor-enter v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    :try_start_6
    iget-object v4, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v4, Lc7/u0;

    iget-object v4, v4, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/x0;

    invoke-virtual {v4}, Lc7/x0;->p()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v4, Lc7/u0;

    iget-object v4, v4, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/x0;

    invoke-virtual {v4, v3}, Lc7/x0;->o(I)Lc7/w0;

    move-result-object v4

    invoke-virtual {v4}, Lc7/w0;->r()I

    move-result v5

    if-ne v5, v1, :cond_7

    invoke-virtual {v4}, Lc7/w0;->t()Lc7/n0;

    move-result-object v3

    sget-object v4, Lc7/n0;->ENABLED:Lc7/n0;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v3, Lc7/u0;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v3, Lc7/x0;

    invoke-static {v3, v1}, Lc7/x0;->m(Lc7/x0;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    iget-object v1, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast v1, LW6/b;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, LB3/c;->m()LX4/i;

    move-result-object v1

    iget-object v3, p0, LQ9/a;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/auth/j;

    iget-object p0, p0, LQ9/a;->d:Ljava/lang/Object;

    check-cast p0, LW6/b;

    iget-object v1, v1, LX4/i;->b:Ljava/lang/Object;

    check-cast v1, Lc7/x0;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->c()[B

    move-result-object v4

    new-array v5, v2, [B

    invoke-virtual {p0, v4, v5}, LW6/b;->a([B[B)[B

    move-result-object v4

    :try_start_7
    new-array v5, v2, [B

    invoke-virtual {p0, v4, v5}, LW6/b;->b([B[B)[B

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object v5

    invoke-static {p0, v5}, Lc7/x0;->t([BLcom/google/crypto/tink/shaded/protobuf/o;)Lc7/x0;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/z;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_7
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz p0, :cond_3

    invoke-static {}, Lc7/a0;->p()Lc7/Z;

    move-result-object p0

    array-length v5, v4

    invoke-static {v4, v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/a0;

    invoke-static {v4, v2}, Lc7/a0;->m(Lc7/a0;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-static {v1}, LV6/o;->a(Lc7/x0;)Lc7/C0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/a0;

    invoke-static {v2, v1}, Lc7/a0;->n(Lc7/a0;Lc7/C0;)V

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/a0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/a;->c()[B

    move-result-object p0

    invoke-static {p0}, LG5/v2;->d([B)Ljava/lang/String;

    move-result-object p0

    iget-object v1, v3, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences$Editor;

    iget-object v2, v3, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to write to SharedPreferences"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :try_start_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "cannot encrypt keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset, corrupted key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0}, LB3/c;->m()LX4/i;

    move-result-object v1

    iget-object p0, p0, LQ9/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/auth/j;

    iget-object v1, v1, LX4/i;->b:Ljava/lang/Object;

    check-cast v1, Lc7/x0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->c()[B

    move-result-object v1

    invoke-static {v1}, LG5/v2;->d([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_3
    return-object v0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to write to SharedPreferences"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :try_start_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set key as primary because it\'s not enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p0

    :goto_5
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "cannot read or generate keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public y()LW6/b;
    .locals 6

    new-instance v0, LZ6/a;

    invoke-direct {v0}, LZ6/a;-><init>()V

    iget-object v1, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, LZ6/a;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "cannot use Android Keystore, it\'ll be disabled"

    const-string v4, "c"

    if-nez v1, :cond_0

    :try_start_0
    iget-object v5, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, LZ6/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v4, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, LZ6/a;->b(Ljava/lang/String;)LW6/b;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    if-nez v1, :cond_1

    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_1
    new-instance v1, Ljava/security/KeyStoreException;

    iget-object p0, p0, LQ9/a;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v2, "the master key "

    const-string v3, " exists but is unusable"

    invoke-static {v2, p0, v3}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public z(Landroid/os/Messenger;Landroid/os/Message;)V
    .locals 3

    const-string v0, "["

    :try_start_0
    const-string v1, "RecordDataHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LQ9/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] send "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, LQ9/a;->f:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object p0, p0, LQ9/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
