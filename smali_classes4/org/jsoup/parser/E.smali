.class public final Lorg/jsoup/parser/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lorg/jsoup/parser/E;

.field public static final d:Lorg/jsoup/parser/E;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jsoup/parser/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/E;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/E;->c:Lorg/jsoup/parser/E;

    new-instance v0, Lorg/jsoup/parser/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/E;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/E;->d:Lorg/jsoup/parser/E;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/jsoup/parser/E;->a:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/E;->b:Z

    return-void
.end method


# virtual methods
.method public final a(LQd/c;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lorg/jsoup/parser/E;->b:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    iget v0, p1, LQd/c;->a:I

    if-ge p0, v0, :cond_0

    iget-object v0, p1, LQd/c;->b:[Ljava/lang/String;

    aget-object v1, v0, p0

    invoke-static {v1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
