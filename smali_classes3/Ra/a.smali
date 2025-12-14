.class public final LRa/a;
.super Lretrofit2/Converter$Factory;
.source "SourceFile"


# instance fields
.field public final a:LB3/c;


# direct methods
.method public constructor <init>(LB3/c;)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    iput-object p1, p0, LRa/a;->a:LB3/c;

    return-void
.end method


# virtual methods
.method public final requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0

    new-instance p1, LRa/b;

    iget-object p0, p0, LRa/a;->a:LB3/c;

    invoke-direct {p1, p0}, LRa/b;-><init>(LB3/c;)V

    return-object p1
.end method

.method public final responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0

    instance-of p2, p1, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Class;

    new-instance p2, Lo3/c;

    iget-object p0, p0, LRa/a;->a:LB3/c;

    invoke-direct {p2, p0, p1}, Lo3/c;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    return-object p2
.end method
