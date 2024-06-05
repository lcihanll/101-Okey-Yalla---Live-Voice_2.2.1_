.class Lio/agora/rtc/audio/OppoHardwareEarback$2;
.super Ljava/lang/Object;
.source "OppoHardwareEarback.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/OppoHardwareEarback;->enableEarbackFeature(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

.field final synthetic val$client:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/agora/rtc/audio/OppoHardwareEarback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$client"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    iput-object p2, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->val$client:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "proxy",
            "method",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onConnectionSucceed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    invoke-static {p1}, Lio/agora/rtc/audio/OppoHardwareEarback;->access$100(Lio/agora/rtc/audio/OppoHardwareEarback;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    invoke-static {p1}, Lio/agora/rtc/audio/OppoHardwareEarback;->access$200(Lio/agora/rtc/audio/OppoHardwareEarback;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->val$client:Ljava/lang/Object;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "requestAudioLoopback"

    invoke-static {p1, p2, v1, v0, p3}, Lio/agora/rtc/audio/ReflectUtils;->safeCallMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
