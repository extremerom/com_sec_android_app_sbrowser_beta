.class public final LF4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI4/g;


# instance fields
.field public final a:LI3/c;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:LQ4/a;

.field public final f:LQ4/a;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LQ4/a;LQ4/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw7/d;

    invoke-direct {v0}, Lw7/d;-><init>()V

    sget-object v1, LG4/c;->a:LG4/c;

    const-class v2, LG4/p;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    const-class v2, LG4/i;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    sget-object v1, LG4/f;->a:LG4/f;

    const-class v2, LG4/u;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    const-class v2, LG4/m;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    sget-object v1, LG4/d;->a:LG4/d;

    const-class v2, LG4/r;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    const-class v2, LG4/j;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    sget-object v1, LG4/b;->a:LG4/b;

    const-class v2, LG4/a;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    const-class v2, LG4/h;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    sget-object v1, LG4/e;->a:LG4/e;

    const-class v2, LG4/t;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    const-class v2, LG4/l;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    sget-object v1, LG4/g;->a:LG4/g;

    const-class v2, LG4/x;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    const-class v2, LG4/o;

    invoke-virtual {v0, v2, v1}, Lw7/d;->a(Ljava/lang/Class;Lu7/d;)Lv7/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw7/d;->d:Z

    new-instance v1, LI3/c;

    const/16 v2, 0x19

    invoke-direct {v1, v2, v0}, LI3/c;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, LF4/d;->a:LI3/c;

    iput-object p1, p0, LF4/d;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, LF4/d;->b:Landroid/net/ConnectivityManager;

    sget-object p1, LF4/a;->c:Ljava/lang/String;

    invoke-static {p1}, LF4/d;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, LF4/d;->d:Ljava/net/URL;

    iput-object p3, p0, LF4/d;->e:LQ4/a;

    iput-object p2, p0, LF4/d;->f:LQ4/a;

    const p1, 0x1fbd0

    iput p1, p0, LF4/d;->g:I

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid url: "

    invoke-static {v2, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(LH4/i;)LH4/i;
    .locals 6

    iget-object v0, p0, LF4/d;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p1}, LH4/i;->c()LH4/h;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p1, LH4/h;->f:Ljava/util/HashMap;

    const-string v3, "Property \"autoMetadata\" has not been set"

    if-eqz v2, :cond_7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "sdk-version"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hardware"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os-uild"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iget-object v4, p1, LH4/h;->f:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz-offset"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v1, LG4/w;->NONE:LG4/w;

    invoke-virtual {v1}, LG4/w;->c()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    iget-object v2, p1, LH4/h;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "net-type"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    sget-object v0, LG4/v;->UNKNOWN_MOBILE_SUBTYPE:LG4/v;

    invoke-virtual {v0}, LG4/v;->c()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v0, LG4/v;->COMBINED:LG4/v;

    invoke-virtual {v0}, LG4/v;->c()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, LG4/v;->a(I)LG4/v;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iget-object v4, p1, LH4/h;->f:Ljava/util/HashMap;

    if-eqz v4, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mobile-subtype"

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "country"

    invoke-virtual {p1, v3, v0}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {p1, v3, v0}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LF4/d;->c:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcc_mnc"

    invoke-virtual {p1, v3, v0}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "CctTransportBackend"

    const-string v1, "Unable to find version code for package"

    invoke-static {p0, v0, v1}, Landroidx/activity/t;->c(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application_build"

    invoke-virtual {p1, v0, p0}, LH4/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, LH4/h;->b()LH4/i;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
