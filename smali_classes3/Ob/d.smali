.class public final LOb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc/o;


# static fields
.field public static final b:LOb/d;

.field public static final c:LOb/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOb/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LOb/d;->b:LOb/d;

    new-instance v0, LOb/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LOb/d;->c:LOb/d;

    return-void
.end method


# virtual methods
.method public a(LJb/f;Ljava/util/ArrayList;)V
    .locals 2

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incomplete hierarchy for class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", unresolved classes "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(LYb/c;)LOb/f;
    .locals 0

    const-string p0, "javaElement"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LOb/f;

    check-cast p1, LPb/r;

    invoke-direct {p0, p1}, LOb/f;-><init>(LPb/r;)V

    return-object p0
.end method

.method public c(LJb/d;)V
    .locals 2

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot infer visibility for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
