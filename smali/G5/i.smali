.class public final synthetic LG5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final synthetic b:LG5/i;

.field public static final synthetic c:LG5/i;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LG5/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LG5/i;-><init>(I)V

    sput-object v0, LG5/i;->b:LG5/i;

    new-instance v0, LG5/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LG5/i;-><init>(I)V

    sput-object v0, LG5/i;->c:LG5/i;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LG5/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, LG5/i;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lu7/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Couldn\'t find encoder for type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lu7/e;

    sget-object p0, LG5/j;->f:Ljava/nio/charset/Charset;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, LG5/j;->g:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/j;->h:Lu7/c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
