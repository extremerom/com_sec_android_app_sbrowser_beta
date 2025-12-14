.class public final LG4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG4/b;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;

.field public static final d:Lu7/c;

.field public static final e:Lu7/c;

.field public static final f:Lu7/c;

.field public static final g:Lu7/c;

.field public static final h:Lu7/c;

.field public static final i:Lu7/c;

.field public static final j:Lu7/c;

.field public static final k:Lu7/c;

.field public static final l:Lu7/c;

.field public static final m:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG4/b;->a:LG4/b;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->b:Lu7/c;

    const-string v0, "model"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->c:Lu7/c;

    const-string v0, "hardware"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->d:Lu7/c;

    const-string v0, "device"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->e:Lu7/c;

    const-string v0, "product"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->f:Lu7/c;

    const-string v0, "osBuild"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->g:Lu7/c;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->h:Lu7/c;

    const-string v0, "fingerprint"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->i:Lu7/c;

    const-string v0, "locale"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->j:Lu7/c;

    const-string v0, "country"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->k:Lu7/c;

    const-string v0, "mccMnc"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->l:Lu7/c;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/b;->m:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LG4/a;

    check-cast p2, Lu7/e;

    check-cast p1, LG4/h;

    iget-object p0, p1, LG4/h;->a:Ljava/lang/Integer;

    sget-object v0, LG4/b;->b:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->b:Ljava/lang/String;

    sget-object v0, LG4/b;->c:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->c:Ljava/lang/String;

    sget-object v0, LG4/b;->d:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->d:Ljava/lang/String;

    sget-object v0, LG4/b;->e:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->e:Ljava/lang/String;

    sget-object v0, LG4/b;->f:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->f:Ljava/lang/String;

    sget-object v0, LG4/b;->g:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->g:Ljava/lang/String;

    sget-object v0, LG4/b;->h:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->h:Ljava/lang/String;

    sget-object v0, LG4/b;->i:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->i:Ljava/lang/String;

    sget-object v0, LG4/b;->j:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->j:Ljava/lang/String;

    sget-object v0, LG4/b;->k:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->k:Ljava/lang/String;

    sget-object v0, LG4/b;->l:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/h;->l:Ljava/lang/String;

    sget-object p1, LG4/b;->m:Lu7/c;

    invoke-interface {p2, p1, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
