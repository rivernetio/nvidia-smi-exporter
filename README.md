# nvidia-smi-exporter
Nvidia SMI metrics exporter for Prometheus

## Start daemon
```
docker run -d --net="host" rivernet/nvidia-smi-exporter:8.0-runtime-ubuntu14.04
```

## Query metrics
```
curl http://localhost:9102/metrics
```

## Metrics
Output fake GPU metrics for test if nvidia-smi is not available.
```
nvidia_fan_speed{gpu="0", name="Tesla K80"} [Not Supported]
nvidia_temperature_gpu{gpu="0", name="Tesla K80"} 32
nvidia_clocks_gr{gpu="0", name="Tesla K80"} 324
nvidia_clocks_sm{gpu="0", name="Tesla K80"} 324
nvidia_clocks_mem{gpu="0", name="Tesla K80"} 324
nvidia_power_draw{gpu="0", name="Tesla K80"} 25.84
nvidia_utilization_gpu{gpu="0", name="Tesla K80"} 70
nvidia_utilization_memory{gpu="0", name="Tesla K80"} 10
nvidia_memory_total{gpu="0", name="Tesla K80"} 11441
nvidia_memory_free{gpu="0", name="Tesla K80"} 4576
nvidia_memory_used{gpu="0", name="Tesla K80"} 6865
nvidia_fan_speed{gpu="1", name="Tesla K80"} [Not Supported]
nvidia_temperature_gpu{gpu="1", name="Tesla K80"} 32
nvidia_clocks_gr{gpu="1", name="Tesla K80"} 324
nvidia_clocks_sm{gpu="1", name="Tesla K80"} 324
nvidia_clocks_mem{gpu="1", name="Tesla K80"} 324
nvidia_power_draw{gpu="1", name="Tesla K80"} 25.84
nvidia_utilization_gpu{gpu="1", name="Tesla K80"} 70
nvidia_utilization_memory{gpu="1", name="Tesla K80"} 10
nvidia_memory_total{gpu="1", name="Tesla K80"} 11441
nvidia_memory_free{gpu="1", name="Tesla K80"} 4576
nvidia_memory_used{gpu="1", name="Tesla K80"} 6865
```
