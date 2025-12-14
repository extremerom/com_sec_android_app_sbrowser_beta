.class public final enum Lcom/samsung/android/scloud/lib/setting/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/scloud/lib/setting/m;

.field public static final enum Loaded:Lcom/samsung/android/scloud/lib/setting/m;

.field public static final enum Loading:Lcom/samsung/android/scloud/lib/setting/m;

.field public static final enum None:Lcom/samsung/android/scloud/lib/setting/m;

.field public static final enum NotLoaded:Lcom/samsung/android/scloud/lib/setting/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/m;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/m;->None:Lcom/samsung/android/scloud/lib/setting/m;

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/m;

    const-string v2, "Loading"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/scloud/lib/setting/m;->Loading:Lcom/samsung/android/scloud/lib/setting/m;

    new-instance v2, Lcom/samsung/android/scloud/lib/setting/m;

    const-string v3, "Loaded"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/scloud/lib/setting/m;->Loaded:Lcom/samsung/android/scloud/lib/setting/m;

    new-instance v3, Lcom/samsung/android/scloud/lib/setting/m;

    const-string v4, "NotLoaded"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/scloud/lib/setting/m;->NotLoaded:Lcom/samsung/android/scloud/lib/setting/m;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/scloud/lib/setting/m;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/m;->$VALUES:[Lcom/samsung/android/scloud/lib/setting/m;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/setting/m;
    .locals 1

    const-class v0, Lcom/samsung/android/scloud/lib/setting/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/m;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/scloud/lib/setting/m;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/m;->$VALUES:[Lcom/samsung/android/scloud/lib/setting/m;

    invoke-virtual {v0}, [Lcom/samsung/android/scloud/lib/setting/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/scloud/lib/setting/m;

    return-object v0
.end method
