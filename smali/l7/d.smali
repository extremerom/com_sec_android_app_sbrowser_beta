.class public final Ll7/d;
.super Ll7/l;
.source "SourceFile"


# static fields
.field public static final b:Ll7/d;

.field public static final c:Ll7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll7/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll7/l;-><init>(I)V

    sput-object v0, Ll7/d;->b:Ll7/d;

    new-instance v0, Ll7/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll7/l;-><init>(I)V

    sput-object v0, Ll7/d;->c:Ll7/d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget p0, p0, Ll7/l;->a:I

    if-nez p0, :cond_0

    const-string p0, "false"

    goto :goto_0

    :cond_0
    const-string p0, "true"

    :goto_0
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "boolean"

    return-object p0
.end method

.method public final getType()Lm7/c;
    .locals 0

    sget-object p0, Lm7/c;->g:Lm7/c;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Ll7/l;->a:I

    if-nez p0, :cond_0

    const-string p0, "boolean{false}"

    goto :goto_0

    :cond_0
    const-string p0, "boolean{true}"

    :goto_0
    return-object p0
.end method
