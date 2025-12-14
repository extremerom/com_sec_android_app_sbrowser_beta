.class public final La8/a;
.super LY7/r;
.source "SourceFile"


# static fields
.field public static final e:[LY7/u;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:La8/d;

.field public final d:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LY7/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LY7/z;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [LY7/u;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, La8/a;->e:[LY7/u;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;La8/d;)V
    .locals 1

    sget-object v0, LY7/s;->PAYMENT:LY7/s;

    invoke-direct {p0, v0}, LY7/r;-><init>(LY7/s;)V

    iput-object p2, p0, La8/a;->c:La8/d;

    iput-object p1, p0, La8/a;->d:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p1, p1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, La8/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La8/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()La8/c;
    .locals 2

    sget-object v0, La8/c;->SAMSUNG_PAY_INDONESIA:La8/c;

    iget-object p0, p0, La8/a;->c:La8/d;

    invoke-virtual {v0, p0}, La8/c;->a(La8/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, La8/c;->SAMSUNG_PAY_INDIA:La8/c;

    invoke-virtual {v0, p0}, La8/c;->a(La8/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, La8/c;->PIX:La8/c;

    invoke-virtual {v0, p0}, La8/c;->a(La8/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    sget-object p0, La8/c;->OTHER:La8/c;

    return-object p0
.end method
