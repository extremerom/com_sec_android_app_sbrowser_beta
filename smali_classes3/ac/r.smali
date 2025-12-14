.class public final Lac/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:Lac/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lac/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lac/r;->a:Lac/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const-string p0, "L"

    const/16 v0, 0x3b

    invoke-static {v0, p0, p1}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
