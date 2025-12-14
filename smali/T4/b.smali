.class public abstract LT4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Landroid/content/ComponentName;

.field public static final c:LG5/g4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "cn.google"

    const-string v1, "com.google"

    const-string v2, "com.google.work"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LT4/b;->a:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LT4/b;->b:Landroid/content/ComponentName;

    const-string v0, "GoogleAuthUtil"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, LG5/g4;

    const-string v2, "Auth"

    invoke-direct {v1, v2, v0}, LG5/g4;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, LT4/b;->c:LG5/g4;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    invoke-static {p0}, LT4/b;->h(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "clientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "androidPackageName"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/n;->d(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/auth/x0;->b:Lcom/google/android/gms/internal/auth/x0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/x0;->a()Lcom/google/android/gms/internal/auth/y0;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/z0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/auth/z0;->b:Lcom/google/android/gms/internal/auth/n;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/n;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, LT4/b;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/auth/a;

    sget-object v6, Lb5/c;->U:Lb5/b;

    sget-object v7, Lb5/i;->c:Lb5/i;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/gms/internal/auth/a;->a:Lb5/g;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    new-instance v2, Lcom/google/android/gms/internal/auth/zzbw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/auth/zzbw;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/internal/auth/zzbw;->b:Ljava/lang/String;

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v3

    sget-object v4, LT4/e;->b:Lcom/google/android/gms/common/Feature;

    filled-new-array {v4}, [Lcom/google/android/gms/common/Feature;

    move-result-object v4

    iput-object v4, v3, LG6/f;->e:Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/auth/U;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/auth/U;-><init>(Lcom/google/android/gms/internal/auth/a;Lcom/google/android/gms/internal/auth/zzbw;)V

    iput-object v4, v3, LG6/f;->d:Ljava/lang/Object;

    const/16 v2, 0x5e9

    iput v2, v3, LG6/f;->c:I

    invoke-virtual {v3}, LG6/f;->a()Lc5/L;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb5/j;->doWrite(Lc5/u;)LR5/h;

    move-result-object v1

    const-string v2, "clear token"

    :try_start_0
    invoke-static {v1, v2}, LT4/b;->g(LR5/h;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lb5/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    sget-object v3, LT4/b;->c:LG5/g4;

    invoke-virtual {v3, v2, v1}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/auth/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, LT4/b;->b:Landroid/content/ComponentName;

    invoke-static {p0, p1, v1}, LT4/b;->f(Landroid/content/Context;Landroid/content/ComponentName;LT4/f;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "accountName must be provided"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    invoke-static {p0}, LT4/b;->h(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, LT4/b;->i(Landroid/accounts/Account;)V

    const-string p1, "^^_account_id_^^"

    invoke-static {p0, v1, p1, v0}, LT4/b;->d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "handle_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "User intervention required. Notification has been pushed."

    const-string v3, "Error when getting token"

    const-string v4, "GoogleAuthUtil"

    :try_start_0
    invoke-static {p0, p1, p2, v0}, LT4/b;->d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p1

    invoke-static {p0}, La5/f;->a(Landroid/content/Context;)V
    :try_end_0
    .catch LT4/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p1, Lcom/google/android/gms/auth/TokenData;->b:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p0}, La5/f;->a(Landroid/content/Context;)V

    invoke-static {v4, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, LT4/d;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    sget p2, La5/f;->e:I

    sget-object p2, La5/b;->d:La5/b;

    const/16 v0, 0x12

    const/4 v5, 0x0

    iget v6, p1, LT4/c;->a:I

    if-ne v6, v0, :cond_0

    move v0, v2

    goto :goto_2

    :cond_0
    if-ne v6, v2, :cond_1

    const-string v0, "com.google.android.gms"

    invoke-static {p0, v0}, La5/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_1
    move v0, v5

    :goto_2
    if-nez v0, :cond_4

    const/16 v0, 0x9

    if-ne v6, v0, :cond_2

    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, La5/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_2
    move v0, v5

    :goto_3
    if-nez v0, :cond_4

    const-string v0, "n"

    invoke-virtual {p2, p0, v6, v0}, La5/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    const/high16 v2, 0xc000000

    invoke-static {p0, v5, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, p0, v6, v0}, La5/b;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_5

    :cond_4
    new-instance v0, La5/i;

    invoke-direct {v0, p2, p0}, La5/i;-><init>(La5/b;Landroid/content/Context;)V

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_5
    invoke-static {v4, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, LT4/d;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .locals 8

    sget-object v0, LT4/b;->c:LG5/g4;

    const-string v1, "Calling this from your main thread can lead to deadlock"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->e(Ljava/lang/String;)V

    const-string v1, "Scope cannot be empty or null."

    invoke-static {p2, v1}, Lcom/google/android/gms/common/internal/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, LT4/b;->i(Landroid/accounts/Account;)V

    invoke-static {p0}, LT4/b;->h(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "clientPackageName"

    invoke-virtual {v1, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "androidPackageName"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, "service_connection_start_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p3, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/n;->d(Landroid/content/Context;)V

    sget-object p3, Lcom/google/android/gms/internal/auth/x0;->b:Lcom/google/android/gms/internal/auth/x0;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/auth/x0;->a()Lcom/google/android/gms/internal/auth/y0;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/auth/z0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/google/android/gms/internal/auth/z0;->b:Lcom/google/android/gms/internal/auth/n;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/auth/n;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p0}, LT4/b;->j(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Lcom/google/android/gms/internal/auth/a;

    sget-object v6, Lb5/c;->U:Lb5/b;

    sget-object v7, Lb5/i;->c:Lb5/i;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/gms/internal/auth/a;->a:Lb5/g;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    const-string v2, "Scope cannot be null!"

    invoke-static {p2, v2}, Lcom/google/android/gms/common/internal/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v2

    sget-object v3, LT4/e;->b:Lcom/google/android/gms/common/Feature;

    filled-new-array {v3}, [Lcom/google/android/gms/common/Feature;

    move-result-object v3

    iput-object v3, v2, LG6/f;->e:Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/auth/C0;

    invoke-direct {v3, p3, p1, p2, v1}, Lcom/google/android/gms/internal/auth/C0;-><init>(Lcom/google/android/gms/internal/auth/a;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v3, v2, LG6/f;->d:Ljava/lang/Object;

    const/16 v3, 0x5e8

    iput v3, v2, LG6/f;->c:I

    invoke-virtual {v2}, LG6/f;->a()Lc5/L;

    move-result-object v2

    invoke-virtual {p3, v2}, Lb5/j;->doWrite(Lc5/u;)LR5/h;

    move-result-object p3

    const-string v2, "token retrieval"

    :try_start_0
    invoke-static {p3, v2}, LT4/b;->g(LR5/h;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    if-eqz p3, :cond_1

    invoke-static {p3}, LT4/b;->e(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v3, "Service call returned null."

    invoke-virtual {v0, v3, p3}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Ljava/io/IOException;

    const-string v3, "Service unavailable."

    invoke-direct {p3, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Lb5/h; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    invoke-virtual {v0, v2, p3}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p3, Lo3/t;

    const/16 v0, 0x18

    invoke-direct {p3, p1, v0, p2, v1}, Lo3/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, LT4/b;->b:Landroid/content/ComponentName;

    invoke-static {p0, p1, p3}, LT4/b;->f(Landroid/content/Context;Landroid/content/ComponentName;LT4/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/TokenData;

    return-object p0
.end method

.method public static e(Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .locals 3

    const-class v0, Lcom/google/android/gms/auth/TokenData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    const-string v1, "tokenDetails"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    const-string v0, "TokenData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/TokenData;

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const-string v0, "Error"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userRecoveryIntent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/c;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/c;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzi:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzs:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzw:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzx:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzn:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzz:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzM:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzE:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzF:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzG:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzH:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzI:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzJ:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzL:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzD:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzK:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zze:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzf:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzg:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/auth/c;->zzae:Lcom/google/android/gms/internal/auth/c;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, LT4/a;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1f

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "isUserRecoverableError status: "

    invoke-static {v2, v1, p0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "GoogleAuthUtil"

    sget-object v2, LT4/b;->c:LG5/g4;

    invoke-virtual {v2, v1, p0}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroid/content/Context;Landroid/content/ComponentName;LT4/f;)Ljava/lang/Object;
    .locals 5

    const-string v0, "Error on service connection."

    const-string v1, "GoogleAuthUtil"

    new-instance v2, LLa/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LLa/a;-><init>(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/G;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/common/internal/D;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/internal/D;-><init>(Landroid/content/ComponentName;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v1, v4}, Lcom/google/android/gms/common/internal/G;->c(Lcom/google/android/gms/common/internal/D;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v2}, LLa/a;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, LT4/f;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/google/android/gms/common/internal/D;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/D;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/internal/G;->b(Lcom/google/android/gms/common/internal/D;Landroid/content/ServiceConnection;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-static {v1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/internal/D;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/D;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/internal/G;->b(Lcom/google/android/gms/common/internal/D;Landroid/content/ServiceConnection;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not bind to service."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SecurityException while bind to auth service: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    const-string p2, "SecurityException while binding to Auth service."

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static g(LR5/h;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, " to finish."

    sget-object v1, LT4/b;->c:LG5/g4;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, LG5/G;->b(LR5/h;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v3, "Canceled while waiting for the task of "

    invoke-static {v3, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    const-string v3, "Interrupted while waiting for the task of "

    invoke-static {v3, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Lb5/h;

    if-eqz v3, :cond_0

    check-cast v0, Lb5/h;

    throw v0

    :cond_0
    const-string v0, "Unable to get a result for "

    const-string v3, " due to ExecutionException."

    invoke-static {v0, p1, v3}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, La5/f;->b(Landroid/content/Context;)V
    :try_end_0
    .catch La5/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch La5/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, LT4/a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, LT4/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, La5/e;->a:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget p0, p0, La5/e;->b:I

    invoke-direct {v0, p0, v1}, LT4/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static i(Landroid/accounts/Account;)V
    .locals 4

    if-eqz p0, :cond_3

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LT4/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account name cannot be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, La5/b;->d:La5/b;

    const v1, 0x1110e58

    invoke-virtual {v0, v1, p0}, La5/c;->b(ILandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/auth/x0;->b:Lcom/google/android/gms/internal/auth/x0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/x0;->a()Lcom/google/android/gms/internal/auth/y0;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/z0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/internal/auth/z0;->a:Lcom/google/android/gms/internal/auth/n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/w0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/w0;->g()Lcom/google/android/gms/internal/auth/J;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
