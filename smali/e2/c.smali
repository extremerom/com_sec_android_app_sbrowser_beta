.class public final Le2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le2/c;

.field public static final c:Le2/c;

.field public static final d:Le2/c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/c;

    const-string v1, "sec"

    invoke-direct {v0, v1}, Le2/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Le2/c;->b:Le2/c;

    new-instance v0, Le2/c;

    const-string v1, "sec-num"

    invoke-direct {v0, v1}, Le2/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Le2/c;->c:Le2/c;

    new-instance v0, Le2/c;

    const-string v1, "sec-num-fixed"

    invoke-direct {v0, v1}, Le2/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Le2/c;->d:Le2/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le2/c;->a:Ljava/lang/String;

    return-object p0
.end method
