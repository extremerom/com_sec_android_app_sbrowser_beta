.class public final Le2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le2/f;

.field public static final c:Le2/f;

.field public static final d:Le2/f;

.field public static final e:Le2/f;

.field public static final f:Le2/f;


# instance fields
.field public final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/f;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-direct {v0, v1}, Le2/f;-><init>(F)V

    sput-object v0, Le2/f;->b:Le2/f;

    new-instance v0, Le2/f;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {v0, v1}, Le2/f;-><init>(F)V

    sput-object v0, Le2/f;->c:Le2/f;

    new-instance v0, Le2/f;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {v0, v1}, Le2/f;-><init>(F)V

    sput-object v0, Le2/f;->d:Le2/f;

    new-instance v0, Le2/f;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {v0, v1}, Le2/f;-><init>(F)V

    sput-object v0, Le2/f;->e:Le2/f;

    new-instance v0, Le2/f;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {v0, v1}, Le2/f;-><init>(F)V

    sput-object v0, Le2/f;->f:Le2/f;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le2/f;->a:F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextCategory(1.0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Le2/f;->a:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
