.class public final LWb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LWb/c;


# static fields
.field public static final a:LWb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LWb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LWb/b;->a:LWb/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final c(Lhc/f;)LPb/z;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final e(Lhc/f;)LPb/t;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Lhc/f;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
