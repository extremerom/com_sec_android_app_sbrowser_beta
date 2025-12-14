.class public final enum Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

.field public static final enum EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

.field public static final enum GROUP:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

.field public static final enum MOVE:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

.field public static final enum NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    sget-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->GROUP:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    sget-object v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->MOVE:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const-string v1, "EDIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const-string v1, "GROUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->GROUP:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const-string v1, "MOVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->MOVE:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->$values()[Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->$VALUES:[Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->$VALUES:[Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-object v0
.end method


# virtual methods
.method public isEditMode()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isGroupMode()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->GROUP:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isMoveMode()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->MOVE:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNormalMode()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSelectMode()Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType$1;->$SwitchMap$com$sec$android$app$sbrowser$multi_tab$tab_stack$views$ModeType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method
