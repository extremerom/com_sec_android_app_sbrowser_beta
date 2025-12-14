.class public final enum Lcom/samsung/android/scloud/lib/setting/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/scloud/lib/setting/l;

.field public static final enum App:Lcom/samsung/android/scloud/lib/setting/l;

.field public static final enum Cloud:Lcom/samsung/android/scloud/lib/setting/l;

.field public static final enum CloudCustom:Lcom/samsung/android/scloud/lib/setting/l;


# instance fields
.field final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/l;

    const-string v1, "App"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/scloud/lib/setting/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/l;->App:Lcom/samsung/android/scloud/lib/setting/l;

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/l;

    const-string v2, "Cloud"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/samsung/android/scloud/lib/setting/l;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/scloud/lib/setting/l;->Cloud:Lcom/samsung/android/scloud/lib/setting/l;

    new-instance v2, Lcom/samsung/android/scloud/lib/setting/l;

    const-string v3, "CloudCustom"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/samsung/android/scloud/lib/setting/l;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/scloud/lib/setting/l;->CloudCustom:Lcom/samsung/android/scloud/lib/setting/l;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/scloud/lib/setting/l;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/l;->$VALUES:[Lcom/samsung/android/scloud/lib/setting/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/scloud/lib/setting/l;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/setting/l;
    .locals 1

    const-class v0, Lcom/samsung/android/scloud/lib/setting/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/l;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/scloud/lib/setting/l;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/l;->$VALUES:[Lcom/samsung/android/scloud/lib/setting/l;

    invoke-virtual {v0}, [Lcom/samsung/android/scloud/lib/setting/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/scloud/lib/setting/l;

    return-object v0
.end method
