.class public final Li2/d;
.super Li2/b;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    sget-object p1, Li2/a;->b:Li2/a;

    invoke-direct {p0, p1}, Li2/d;-><init>(Li2/b;)V

    return-void
.end method

.method public constructor <init>(Li2/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li2/b;-><init>()V

    iget-object p0, p0, Li2/b;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Li2/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
