.class public final enum Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum KEY_DOWN:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_CREATE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_DESTROY:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_FOCUS_GAINED:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_FOCUS_LOST:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_PAUSE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_RESTORE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_RESUME:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_START:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_STOP:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v1, "ON_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v3, "ON_CREATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v3, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v5, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v7, "ON_DESTROY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v7, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v9, "ON_PAUSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v9, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v11, "KEY_DOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v11, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v13, "ON_RESTORE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v13, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v15, "ON_STOP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v15, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v14, "ON_FOCUS_GAINED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_FOCUS_GAINED:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v14, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v12, "ON_FOCUS_LOST"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_FOCUS_LOST:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;
    .locals 1

    const-class v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    return-object v0
.end method
